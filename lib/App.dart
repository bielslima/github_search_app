import 'package:flutter/material.dart';
import 'package:github_search_repository/core/routes/paths.dart';
import 'package:overlay_support/overlay_support.dart';

import 'core/di/injectable.dart';
import 'core/routes/routes.dart';
import 'core/singleton/app.singleton.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppSingleton appSingleton;

  _MyAppState(){
    this.appSingleton = getIt();
    GSRSetupRoutes.setup(appSingleton.router);
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: this.appSingleton.router.generator,
        initialRoute: GSRPaths.SEARCH_PAGE,
      ),
    );
  }
}