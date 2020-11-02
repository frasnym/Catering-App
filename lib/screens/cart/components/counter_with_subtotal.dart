import 'package:flutter/material.dart';

import 'package:catering_app/providers/cart.dart';

import 'package:catering_app/constants.dart';

import 'package:catering_app/screens/cart/components/cart_counter.dart';

class CounterWithSubtotal extends StatelessWidget {
  const CounterWithSubtotal({
    Key key,
    @required this.cartId,
    @required this.subTotal,
    this.cartItem,
  }) : super(key: key);

  final String cartId;
  final CartItem cartItem;
  final int subTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(cartId: cartId, cartItem: cartItem),
        Text(
          '${formatCurrency.format(subTotal)}',
          style: Theme.of(context).textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
