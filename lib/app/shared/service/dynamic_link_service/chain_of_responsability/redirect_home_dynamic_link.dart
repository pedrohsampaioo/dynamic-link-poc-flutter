import 'package:flutter/cupertino.dart';

import 'dynamic_link_chain_of_responsability.dart';

class RedirectHomeDynamicLink extends DynamicLinkChainOfResponsability {
  @override
  VoidCallback handler({@required String path}) {
    print('path: $path');
    if (path.contains('/')) {
      print('go to /home');
      return () {};
    }

    return super.handler(path: path);
  }
}
