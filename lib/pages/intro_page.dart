import 'package:flutter/material.dart';
import 'package:quick_cart/components/my_button.dart';

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

            const SizedBox(height: 40), // Spacer to add vertical space

            // Custom button widget
            MyButton(
              onTap: () {}, // Define button tap action
              child: const Icon(Icons.arrow_forward), // Child widget inside the button (an arrow icon)
            ),
          ],
        ),
      ),
    );
  }
}
