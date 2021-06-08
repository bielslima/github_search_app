import 'package:flutter/material.dart';
import 'package:github_search_repository/core/di/injectable.dart';
import 'package:github_search_repository/ui/controllers/seach-page/search-page.controller.dart';
import 'package:github_search_repository/ui/pages/Search/widgets/BtnSearch.dart';

import 'widgets/InputSearch.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchPageController controller = getIt();

  @override
  void initState() {
    super.initState();
    this.controller.setReactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox.shrink(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Github username:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InputSearch(
                    txtController: this.controller.inputUsername,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .2,
              child: Center(
                child: BtnSearch(
                  controller: this.controller,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
