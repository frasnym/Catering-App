import 'package:flutter/material.dart';

import 'package:catering_app/constants.dart';
import 'package:catering_app/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
    this.addToCart,
  }) : super(key: key);

  final Product product;
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: kDefaultPaddin / 2,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: product.color,
              ),
              onPressed: () => addToCart(
                product.id,
                product.price,
                product.title,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: product.color,
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // TODO instant checkout
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
