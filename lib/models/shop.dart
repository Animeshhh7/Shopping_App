import 'package:quick_cart/models/product.dart';

class Shop extends ChangeNotifier {
  // Products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Product 1",
      price: 100.0,
      description: "This is the first product description.",
    ),
    // product 2
    Product(
      name: "Product 2",
      price: 200.0,
      description: "This is the second product description.",
    ),
    // product 3
    Product(
      name: "Product 3",
      price: 300.0,
      description: "This is the third product description.",
    ),
    // product 4
    Product(
      name: "Product 4",
      price: 400.0,
      description: "This is the fourth product description.",
    ),
  ];

  // User cart
  final List<Product> _cart = [];

  // Get product list
  List<Product> get shop => _shop;

  // Get user cart
  List<Product> get cart => _cart;

  // Add items to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // Remove items from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
