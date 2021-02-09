import 'package:flutter/material.dart';

import '../../shared/args/cart_args.dart';

class CartPage extends StatelessWidget {
  final CartArgs args;

  const CartPage({
    Key key,
    @required this.args,
  })  : assert(args != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Text(
            'Cart Page; Id: ${args.id}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
