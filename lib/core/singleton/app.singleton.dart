import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:github_search_repository/data/models/repository.model.dart';
import 'package:github_search_repository/data/models/user.model.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppSingleton {
  late FluroRouter router;
  UserModel? user;
  List<RepositoryModel>? repositories;

  AppSingleton() {
    this.router = FluroRouter();
  }

  Future<dynamic> navigateTo(
    BuildContext context,
    String path, {
    bool clearStack = false,
    Object? arguments,
    TransitionType transitionType = TransitionType.native,
  }) {
    return this.router.navigateTo(
          context,
          path,
          clearStack: clearStack,
          transition: transitionType,
          routeSettings: RouteSettings(
            arguments: arguments,
          ),
        );
  }
}
