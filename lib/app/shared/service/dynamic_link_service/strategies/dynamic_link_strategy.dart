import 'package:flutter/foundation.dart';

import '../../../navigator_observer/navigator_history_observer.dart';
import 'redirect_cart_dynamic_link_strategy.dart';
import 'redirect_home_dynamic_link_strategy.dart';

typedef DynamicLinkStrategyCallback = DynamicLinkStrategy Function(
  NavigatorHistoryObserver navigatorHistoryObserver,
  String path,
  Map<String, String> queryParameters,
);

abstract class DynamicLinkStrategy {
  final NavigatorHistoryObserver navigatorHistoryObserver;
  final String path;
  final Map<String, String> queryParameters;

  const DynamicLinkStrategy({
    @required this.navigatorHistoryObserver,
    @required this.path,
    @required this.queryParameters,
  })  : assert(navigatorHistoryObserver != null),
        assert(path != null),
        assert(queryParameters != null);

  VoidCallback handlerOnOpenApp();

  VoidCallback handlerOnBackground();
}

DynamicLinkStrategyCallback selectDynamicLinkStrategy({
  @required String redirectInApp,
}) {
  return _dynamicLinkStrategies[redirectInApp];
}

Map<String, DynamicLinkStrategyCallback> get _dynamicLinkStrategies => {
      'redirect-cart': (navigatorHistoryObserver, path, queryParameters) =>
          RedirectCartDynamicLinkStrategy(
            navigatorHistoryObserver: navigatorHistoryObserver,
            path: path,
            queryParameters: queryParameters,
          ),
      'redirect-home': (navigatorHistoryObserver, path, queryParameters) =>
          RedirectHomeDynamicLinkStrategy(
            navigatorHistoryObserver: navigatorHistoryObserver,
            path: path,
            queryParameters: queryParameters,
          ),
    };
