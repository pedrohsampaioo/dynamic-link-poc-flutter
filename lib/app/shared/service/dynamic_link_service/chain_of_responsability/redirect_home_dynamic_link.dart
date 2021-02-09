import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dynamic_link_chain_of_responsability.dart';

class RedirectHomeDynamicLink extends DynamicLinkChainOfResponsability {
  @override
  VoidCallback handler({@required String path}) {
    if (path.contains('/home')) {
      return () => Modular.to.pushNamed('/home');
    }

    return super.handler(path: path);
  }
}
