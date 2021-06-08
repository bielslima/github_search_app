  
import 'package:fluro/fluro.dart';

import './handlers.dart';
import './paths.dart';

class GSRSetupRoutes {
  static void setup(FluroRouter router) {
    router.define(
      GSRPaths.SEARCH_PAGE,
      handler: GSRRouteHandlers.searchHandler,
    );

    router.define(
      GSRPaths.RESULT_PAGE,
      handler: GSRRouteHandlers.resultsHandler,
    );
  }
}