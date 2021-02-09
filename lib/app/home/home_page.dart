import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../shared/cubits/dynamic_link_cubit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
