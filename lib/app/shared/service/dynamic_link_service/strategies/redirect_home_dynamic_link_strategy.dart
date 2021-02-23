import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../navigator_observer/navigator_history_observer.dart';
import 'dynamic_link_strategy.dart';

class RedirectHomeDynamicLinkStrategy extends DynamicLinkStrategy {
  const RedirectHomeDynamicLinkStrategy({
    @required NavigatorHistoryObserver navigatorHistoryObserver,
    @required String path,
    @required Map<String, String> queryParameters,
  }) : super(
          navigatorHistoryObserver: navigatorHistoryObserver,
          path: path,
          queryParameters: queryParameters,
        );

  @override
  VoidCallback handlerOnBackground() {
    return () => Modular.to.pushNamed('/home');
  }

  @override
  VoidCallback handlerOnOpenApp() {
    return () => Modular.to.pushNamed('/home');
  }
}
