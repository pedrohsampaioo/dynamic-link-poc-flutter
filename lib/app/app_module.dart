import 'package:dynamic_link_poc/app/app_widget.dart';
import 'package:dynamic_link_poc/app/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', module: HomeModule()),
      ];
}
