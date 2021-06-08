// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search-page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchPageController on _SearchPageControllerBase, Store {
  final _$failureSearchAtom =
      Atom(name: '_SearchPageControllerBase.failureSearch');

  @override
  Option<SearchFailure> get failureSearch {
    _$failureSearchAtom.reportRead();
    return super.failureSearch;
  }

  @override
  set failureSearch(Option<SearchFailure> value) {
    _$failureSearchAtom.reportWrite(value, super.failureSearch, () {
      super.failureSearch = value;
    });
  }

  final _$isSearchingUserAtom =
      Atom(name: '_SearchPageControllerBase.isSearchingUser');

  @override
  bool get isSearchingUser {
    _$isSearchingUserAtom.reportRead();
    return super.isSearchingUser;
  }

  @override
  set isSearchingUser(bool value) {
    _$isSearchingUserAtom.reportWrite(value, super.isSearchingUser, () {
      super.isSearchingUser = value;
    });
  }

  final _$_SearchPageControllerBaseActionController =
      ActionController(name: '_SearchPageControllerBase');

  @override
  void setIsSearchingUser(bool v) {
    final _$actionInfo = _$_SearchPageControllerBaseActionController
        .startAction(name: '_SearchPageControllerBase.setIsSearchingUser');
    try {
      return super.setIsSearchingUser(v);
    } finally {
      _$_SearchPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setFailure(Option<SearchFailure> v) {
    final _$actionInfo = _$_SearchPageControllerBaseActionController
        .startAction(name: '_SearchPageControllerBase._setFailure');
    try {
      return super._setFailure(v);
    } finally {
      _$_SearchPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
failureSearch: ${failureSearch},
isSearchingUser: ${isSearchingUser}
    ''';
  }
}
