import 'package:flutter/foundation.dart';

abstract class DynamicLinkChainOfResponsability {
  DynamicLinkChainOfResponsability next;

  DynamicLinkChainOfResponsability();

  DynamicLinkChainOfResponsability addNext(
    DynamicLinkChainOfResponsability nextRule,
  ) {
    next = nextRule;
    return nextRule;
  }

  VoidCallback handler({@required String path}) {
    assert(path != null);
    return next?.handler(path: path) ?? () {};
  }
}
