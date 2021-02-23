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
    final navigatorHistory = navigatorHistoryObserver.historyWithNamedRoutes;
    if (navigatorHistory.contains('/account/validate-email')) {
      return () => Modular.to.pushNamedAndRemoveUntil(
            '/account/user-info-sync',
            ModalRoute.withName('/account/user-info-sync'),
          );
    }
    return null;
  }

  @override
  VoidCallback handlerOnOpenApp() {
    return null;
  }
}
