import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/cubits/dynamic_link_cubit.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final dynamicLinkCubit = Modular.get<DynamicLinkCubit>();
  @override
  void initState() {
    super.initState();
    dynamicLinkCubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
