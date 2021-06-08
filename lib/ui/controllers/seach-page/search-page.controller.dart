import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:github_search_repository/core/error/failures.dart';
import 'package:github_search_repository/core/routes/paths.dart';
import 'package:github_search_repository/core/singleton/app.singleton.dart';
import 'package:github_search_repository/data/usecases/find_user.repository.dart';
import 'package:github_search_repository/data/usecases/search_repositories.repository.dart';
import 'package:github_search_repository/ui/notifications/OverlayNotifications.dart';
import 'package:mobx/mobx.dart';
import 'package:injectable/injectable.dart';

part 'search-page.controller.g.dart';

@injectable
class SearchPageController = _SearchPageControllerBase
    with _$SearchPageController;

abstract class _SearchPageControllerBase with Store {
  AppSingleton appSingleton;
  FindUserUseCase findUserUseCase;
  SearchRepositoriesUseCase searchRepositoriesUseCase;

  _SearchPageControllerBase(
      this.findUserUseCase, this.searchRepositoriesUseCase, this.appSingleton);

  @observable
  Option<SearchFailure> failureSearch = none();

  @observable
  bool isSearchingUser = false;

  @action
  void setIsSearchingUser(bool v) => this.isSearchingUser = v;

  @action
  void _setFailure(Option<SearchFailure> v) => this.failureSearch = v;

  TextEditingController inputUsername = new TextEditingController();

  void onSearchUsername(BuildContext context) async {
    if (this.isSearchingUser) return;
    if (this.inputUsername.text.isEmpty) return;
    setIsSearchingUser(true);

    final verifyResult =
        await findUserUseCase.call(username: inputUsername.text);
    verifyResult.fold(
      (failureResult) {
        this._setFailure(optionOf(failureResult));
        setIsSearchingUser(false);
      },
      (userResult) {
        this.appSingleton.user = userResult;
        this._onSearchRepositories(context);
      },
    );
  }

  void _onSearchRepositories(BuildContext context) async {
    final verifyResult =
        await searchRepositoriesUseCase.call(username: inputUsername.text);
    setIsSearchingUser(false);
    verifyResult.fold(
      (failureResult) {
        this._setFailure(optionOf(failureResult));
      },
      (repositoriesResult) {
        print('Encontrado ${repositoriesResult.length} repositorios.');
        this.appSingleton.repositories = repositoriesResult;
        this.goToResultPage(context);
      },
    );
  }

  void setReactions() {
    reaction((_) => this.failureSearch, (_) {
      this.failureSearch.map((failure) {
        String message;
        if (failure is NotFoundUser) {
          message = 'User not found.';
        } else {
          message = 'Unexpected error';
        }

        OverlayNotifications.showToastError(message);
      });
    });
  }

  void goToResultPage(BuildContext context) {
    this.appSingleton.navigateTo(context, GSRPaths.RESULT_PAGE);
  }
}
