import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:github_search_repository/core/di/injectable.dart';
import 'package:github_search_repository/core/singleton/app.singleton.dart';

class Profile extends StatelessWidget {
  final AppSingleton appSingleton = getIt();
  Profile({Key? key}) : super(key: key);

  String get nameUser {
    return appSingleton.user!.name != '' ? appSingleton.user!.name : "@${appSingleton.user!.login}";
  }

  @override
  Widget build(BuildContext context) {
    final double sizePicture = 70;
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context))
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "${appSingleton.user?.avatarUrl}",
                      height: sizePicture,
                      width: sizePicture,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$nameUser',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${appSingleton.user!.bio}',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
