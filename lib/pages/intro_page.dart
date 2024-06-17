import 'package:flutter/material.dart';

import 'shop_page.dart';

// Widget for the intro page
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background, // Setting the background color from the theme
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centering the column's content vertically
          children: [

            // Logo icon
            Icon(
              Icons.shopping_bag, 
              size: 75, 
              color: Theme.of(context).colorScheme.inversePrimary, // Icon color from the theme
            ),
            
            const SizedBox(height: 25), // Spacer to add vertical space

            // Title text
            const Text(
              "Quick Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold, // Bold text style
                fontSize: 25, // Text size
              ),
            ),

            const SizedBox(height: 10), // Spacer to add vertical space

            // Subtitle text
            Text(
              "A Minimal Shop for Quality Products",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary, // Text color from the theme
                fontSize: 17, // Text size
              ),
            ),

            const SizedBox(height: 20), // Spacer to add vertical space

           // Arrow Button
            TextButton(
              onPressed: () {
                // Navigate to the ShopPage when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPage()),
                );
              },
              
              child: Container(
                padding: const EdgeInsets.all(10), // Padding around the icon
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                  shape: BoxShape.circle, // Shape of the container
                ),
            
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black, // Set arrow color to black
                  size: 30, // Adjust size if needed
                  weight: 900, // Make the icon bold
                ), 
              ),
            ),

            

          ],
        ),
      ),
    );
  }
}
