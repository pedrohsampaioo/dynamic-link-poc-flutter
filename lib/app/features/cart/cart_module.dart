import 'cart_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/cart', child: (_, args) => CartPage(args: args.data)),
      ];
}
