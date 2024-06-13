import 'package:flutter/material.dart';
import 'package:quick_cart/components/my_drawer.dart'; // Import the MyDrawer widget

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

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
      body: const Center(
        child: Text(
          "Welcome to the Shop!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
