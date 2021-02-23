import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'features/cart/cart_module.dart';
import 'features/home/home_module.dart';
import 'features/splash/splash_module.dart';
import 'shared/cubits/dynamic_link_cubit.dart';
import 'shared/navigator_observer/navigator_history_observer.dart';
import 'shared/service/dynamic_link_service/dynamic_link_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NavigatorHistoryObserver()),
        Bind((i) => FirebaseDynamicLinks.instance),
        Bind(
          (i) => DynamicLinkService(
            firebaseDynamicLinks: i(),
            navigatorHistoryObserver: i(),
          ),
        ),
        Bind((i) => DynamicLinkCubit(dynamicLinkService: i())),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: SplashModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/cart', module: CartModule()),
      ];
}
