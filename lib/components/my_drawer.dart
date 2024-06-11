import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: const Column(
        children: [

          // drawer header (logo)

          // shop tile

          // cart tile

          // exit shop tile
          
        ],
      ),
    );
  }
}