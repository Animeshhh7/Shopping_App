import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [

          // Drawer header (logo)
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).colorScheme.background,
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 70,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          // Shop tile
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              // Navigate to shop page
            },
          ),

          // Cart tile
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              // Navigate to cart page
            },
          ),

          // Exit shop tile
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {
              // Exit the shop
            },
          ),
        ],
      ),
    );
  }
}
