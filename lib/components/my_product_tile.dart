import 'package:flutter/material.dart';
import 'package:quick_cart/models/product.dart';


class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({
    super.key,
    required this.product,
    });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          // product image
          const Icon(Icons.favorite),

          // product name
          Text(product.name),

          // product description
          Text(product.description),

          // product price + add to cart button
          Text(product.price.toStringAsFixed(2)),
        ],
      )
    );
  }
}