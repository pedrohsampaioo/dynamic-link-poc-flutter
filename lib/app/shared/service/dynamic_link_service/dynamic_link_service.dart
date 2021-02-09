import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/foundation.dart';

class DynamicLinkService {
  final FirebaseDynamicLinks _firebaseDynamicLinks;

  const DynamicLinkService({
    @required FirebaseDynamicLinks firebaseDynamicLinks,
  })  : assert(firebaseDynamicLinks != null),
        _firebaseDynamicLinks = firebaseDynamicLinks;

  Future<void> initDynamicLinks(
    VoidCallback Function({@required String path}) redirectRule,
  ) async {
    _initBackgroundDynamicLinks(redirectRule: redirectRule);
    await _initRedirectOnOpenAppDynamicLinks(redirectRule: redirectRule);
  }

  void _initBackgroundDynamicLinks({
    @required VoidCallback Function({@required String path}) redirectRule,
  }) {
    _firebaseDynamicLinks.onLink(
      onSuccess: (pendingDynamicLinkData) async {
        final deepLink = pendingDynamicLinkData?.link;
        if (deepLink != null && redirectRule != null) {
          final path = deepLink.path;
          final redirectCall = redirectRule(path: path);
          redirectCall();
        }
      },
      onError: (onLinkErrorException) async {

      },
    );
  }

  Future<void> _initRedirectOnOpenAppDynamicLinks({
    @required VoidCallback Function({@required String path}) redirectRule,
  }) async {
    final pendingDynamicLinkData = await _firebaseDynamicLinks.getInitialLink();
    final deepLink = pendingDynamicLinkData?.link;
    if (deepLink != null && redirectRule != null) {
      final path = deepLink.path;
      final redirectCall = redirectRule(path: path);
      redirectCall();
    }
  }
}
