import 'package:quick_cart/models/product.dart';

class Shop {
  // Products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 100.0,
      description: "This is the first product description.",
      imagepath: "assets/images/product1.jpg",
    ),
    Product(
      name: "Product 2",
      price: 150.0,
      description: "This is the second product description.",
      imagepath: "assets/images/product2.jpg",
    ),
    // Add more products as needed
  ];

  // User cart
  final List<Product> _cart = [];

  // Get product list
  List<Product> get shop => _shop;

  // Get user cart
  List<Product> get cart => _cart;

  // Add items to cart
  void addToCart(Product product) {
    _cart.add(product);
  }

  // Remove items from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
  }
}
