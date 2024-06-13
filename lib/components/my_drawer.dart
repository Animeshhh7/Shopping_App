import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Drawer header (logo) positioned a bit down
          Container(
            padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
            color: Theme.of(context).colorScheme.background,
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          // Spacer to push the following items to the middle
          Spacer(flex: 1),
          // Shop tile
          Center(
            child: ListTile(
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shop,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30, // Increased icon size
                  ),
                  const SizedBox(width: 16), // Spacer between icon and text
                  Text(
                    'Shop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increased text size
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Navigate to shop page
              },
            ),
          ),
          const SizedBox(height: 20), // Spacer between Shop and Cart tiles
          // Cart tile
          Center(
            child: ListTile(
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30, // Increased icon size
                  ),
                  const SizedBox(width: 16), // Spacer between icon and text
                  Text(
                    'Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increased text size
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Navigate to cart page
              },
            ),
          ),
          // Spacer to push the exit tile upward
          Spacer(flex: 5),
          // Exit shop tile
          Center(
            child: ListTile(
              title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.exit_to_app,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 30, // Increased icon size
                  ),
                  const SizedBox(width: 20), // Spacer between icon and text
                  Text(
                    'Exit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20, // Increased text size
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Exit the shop
              },
            ),
          ),
        ],
      ),
    );
  }
}
