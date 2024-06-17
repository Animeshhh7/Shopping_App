import 'package:flutter/material.dart';
//import 'package:quick_cart/pages/cart_page.dart';
//import 'package:quick_cart/pages/intro_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // drawer header: logo
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 75,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          )
              
          // shop tile

          // cart tile

          // exit shop
        ],
      )
    );
  }
}