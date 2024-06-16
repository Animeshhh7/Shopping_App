import 'package:flutter/material.dart';
import 'package:quick_cart/components/my_drawer.dart'; // Import the MyDrawer widget
import 'package:quick_cart/models/product.dart';
import 'package:quick_cart/models/shop.dart';

class ShopPage extends StatelessWidget {
  final Shop shop = Shop();

  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
      ),
      drawer: const MyDrawer(), // Use the MyDrawer widget here
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: shop.shop.length,
        itemBuilder: (ctx, i) => ProductItem(shop.shop[i]),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              title: Text(product.name),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(product.imagepath),
                  const SizedBox(height: 10),
                  Text(product.description),
                  const SizedBox(height: 10),
                  Text('\$${product.price.toStringAsFixed(2)}'),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: const Text('Close'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                    Shop().addToCart(product);
                    Navigator.of(ctx).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product.name} added to cart!'),
                      ),
                    );
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          );
        },
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                product.imagepath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('\$${product.price.toStringAsFixed(2)}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
