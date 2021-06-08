import 'dart:ui';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:github_search_repository/core/di/injectable.dart';
import 'package:github_search_repository/core/routes/paths.dart';
import 'package:github_search_repository/core/singleton/app.singleton.dart';
import 'package:github_search_repository/ui/controllers/seach-page/search-page.controller.dart';

class BtnSearch extends StatelessWidget {
  SearchPageController controller;

  BtnSearch({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => this.controller.onSearchUsername(context),
      child: Container(
        child: Center(
            child: Observer(
              builder: (_) => controller.isSearchingUser ? CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),) : Text(
          "Search repositories",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
        )),
            ),
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
