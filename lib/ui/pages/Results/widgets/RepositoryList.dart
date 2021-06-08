import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:github_search_repository/core/di/injectable.dart';
import 'package:github_search_repository/core/singleton/app.singleton.dart';

class RepositoryList extends StatelessWidget {
  final AppSingleton appSingleton = getIt();

  RepositoryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated( separatorBuilder: (context, index) => Divider(), itemBuilder: (context, index) => ListTile(
      title: Text('${appSingleton.repositories![index].fullName}', style: TextStyle(
        fontWeight: FontWeight.bold,
      ),),
      subtitle: Text("${appSingleton.repositories![index].description}"),
    ), itemCount: appSingleton.repositories!.length,);
  }
}