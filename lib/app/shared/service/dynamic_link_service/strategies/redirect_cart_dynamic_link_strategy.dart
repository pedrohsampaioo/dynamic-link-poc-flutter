import 'package:dynamic_link_poc/app/shared/args/cart_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../navigator_observer/navigator_history_observer.dart';
import 'dynamic_link_strategy.dart';

class RedirectCartDynamicLinkStrategy extends DynamicLinkStrategy {
  const RedirectCartDynamicLinkStrategy({
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
    return () => Modular.to.pushNamed('/cart', arguments: CartArgs(id: 5));
  }

  @override
  VoidCallback handlerOnOpenApp() {
    return () => Modular.to.pushNamed('/cart', arguments: CartArgs(id: 5));
  }
}
