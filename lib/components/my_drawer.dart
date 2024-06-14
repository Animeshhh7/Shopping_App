import 'package:flutter/material.dart';
import 'package:quick_cart/pages/cart_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).pop(); // Close the drawer when tapping outside the list items
      },
      child: Drawer(
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
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            // Spacer to push the following items to the middle
            Spacer(flex: 1),
            // Shop tile (Home)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 30,
                ),
                title: Text(
                  'Shop',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(); // Close the drawer
                },
              ),
            ),
            const SizedBox(height: 20), // Spacer between Home and Cart tiles
            // Cart tile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 30,
                ),
                title: Text(
                  'Cart',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
              ),
            ),
            // Spacer to push the exit tile upward
            Spacer(flex: 5),
            // Exit shop tile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 30,
                ),
                title: Text(
                  'Exit',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop(); // Close the drawer
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
