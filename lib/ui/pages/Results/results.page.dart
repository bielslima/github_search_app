import 'package:flutter/material.dart';
import 'package:github_search_repository/core/di/injectable.dart';
import 'package:github_search_repository/core/singleton/app.singleton.dart';
import 'package:github_search_repository/ui/pages/Results/widgets/Profile.dart';
import 'package:github_search_repository/ui/pages/Results/widgets/RepositoryList.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  late final AppSingleton appSingleton;

  _ResultsPageState() {
    this.appSingleton = getIt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Profile(),
            Expanded(
              child: RepositoryList(),
            ),
          ],
        ),
      ),
    );
  }
}
