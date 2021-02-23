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
    final navigatorHistory = navigatorHistoryObserver.historyWithNamedRoutes;
    final canBackToAccessPage = navigatorHistory.every(
      (routeName) =>
          routeName == '/account/access' ||
          routeName == '/account/password-recover' ||
          routeName ==
              '/account/password-recover/password-recover-email-sent-page',
    );
    if (canBackToAccessPage) {
      return () => Modular.to.popUntil(ModalRoute.withName('/account/access'));
    }
    return null;
  }

  @override
  VoidCallback handlerOnOpenApp() {
    return null;
  }
}
