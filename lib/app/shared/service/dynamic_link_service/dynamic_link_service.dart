import 'package:dartz/dartz.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';

import '../../navigator_observer/navigator_history_observer.dart';
import 'strategies/dynamic_link_strategy.dart';

class DynamicLinkService {
  final FirebaseDynamicLinks _firebaseDynamicLinks;
  final NavigatorHistoryObserver _navigatorHistoryObserver;

  const DynamicLinkService({
    @required FirebaseDynamicLinks firebaseDynamicLinks,
    @required NavigatorHistoryObserver navigatorHistoryObserver,
  })  : assert(firebaseDynamicLinks != null),
        assert(navigatorHistoryObserver != null),
        _firebaseDynamicLinks = firebaseDynamicLinks,
        _navigatorHistoryObserver = navigatorHistoryObserver;

  Future<Option<VoidCallback>> initOnOpenAppDynamicLinks() async {
    final initialRedirect = await _initRedirectOnOpenAppDynamicLinks();
    return optionOf(initialRedirect);
  }

  void initBackgroundDynamicLinks() {
    _firebaseDynamicLinks.onLink(
      onSuccess: (pendingDynamicLinkData) async {
        final deepLink = pendingDynamicLinkData?.link;
        final dynamicLinkStrategy = await _handleDeepLink(deepLink);
        final redirectCallback = dynamicLinkStrategy?.handlerOnBackground();
        if (redirectCallback != null) {
          redirectCallback();
        }
      },
      onError: (onLinkErrorException) async {},
    );
  }

  Future<VoidCallback> _initRedirectOnOpenAppDynamicLinks() async {
    final pendingDynamicLinkData =
        await _firebaseDynamicLinks?.getInitialLink();
    if (pendingDynamicLinkData == null) {
      return null;
    }
    final deepLink = pendingDynamicLinkData?.link;
    final dynamicLinkStrategy = await _handleDeepLink(deepLink);
    return dynamicLinkStrategy?.handlerOnOpenApp();
  }

  Future<DynamicLinkStrategy> _handleDeepLink(Uri deepLink) async {
    if (deepLink != null) {
      final path = deepLink?.path;
      final queryParameters = deepLink?.queryParameters;
      final redirectInApp = queryParameters['redirectInApp'];
      if (redirectInApp != null) {
        final factoryDynamicLinkStrategy = selectDynamicLinkStrategy(
          redirectInApp: redirectInApp,
        );
        final dynamicLinkStrategy = factoryDynamicLinkStrategy(
          _navigatorHistoryObserver,
          path,
          queryParameters,
        );
        return dynamicLinkStrategy;
      }
    }
    return null;
  }
}
