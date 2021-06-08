import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../ui/pages/pages.dart';

class GSRRouteHandlers {
  static Handler searchHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        SearchPage(),
  );

  static Handler resultsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        ResultsPage(),
  );
}
