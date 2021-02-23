import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../args/cart_args.dart';
import 'dynamic_link_chain_of_responsability.dart';

class RedirectCardDynamicLink extends DynamicLinkChainOfResponsability {
  @override
  VoidCallback handler({@required String path}) {
    if (path.contains('/cart')) {
      final id = int.tryParse(path.replaceAll('/cart/', ''));
      return () => Modular.to.pushNamed('/cart', arguments: CartArgs(id: id));
    }

    return super.handler(path: path);
  }
}
