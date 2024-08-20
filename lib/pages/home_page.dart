import 'package:flutter/material.dart';
import 'package:quick_cart/constants.dart';
import 'package:quick_cart/models/product.dart';
import 'package:quick_cart/components/categories.dart';
import 'package:quick_cart/components/home_appbar.dart';
import 'package:quick_cart/components/home_slider.dart';
import 'package:quick_cart/components/product_card.dart';
import 'package:quick_cart/components/search_field.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts;

    if (selectedCategory == "All") {
      filteredProducts = [...products]; // Copy the list of all products
      filteredProducts.shuffle(Random()); // Shuffle the list for random order
    } else {
      filteredProducts = products
          .where((product) => product.category == selectedCategory)
          .toList();
    }

    return Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const SearchField(),
                const SizedBox(height: 20),
                HomeSlider(
                  onChange: (value) {
                    setState(() {
                      currentSlide = value;
                    });
                  },
                  currentSlide: currentSlide,
                ),
                const SizedBox(height: 20),
                Categories(
                  onCategorySelected: (category) {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                ),
                const SizedBox(height: 25),
                Text(
                  selectedCategory == "All"
                      ? "New Arrivals"
                      : selectedCategory,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: filteredProducts[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
