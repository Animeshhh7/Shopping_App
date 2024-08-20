import 'package:flutter/material.dart';
import 'package:quick_cart/models/category.dart';

class Categories extends StatelessWidget {
  final Function(String) onCategorySelected;

  const Categories({
    super.key,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onCategorySelected(categories[index].title);
            },
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        categories[index].image,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  categories[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemCount: categories.length,
      ),
    );
  }
}
