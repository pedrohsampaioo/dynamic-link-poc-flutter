import 'package:flutter/foundation.dart';

class CartArgs {
  final int id;

  const CartArgs({
    @required this.id,
  }) : assert(id != null);
}
