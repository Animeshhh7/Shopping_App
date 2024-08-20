class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "All", image: "assets/all.png"),
  Category(title: "Shoes", image: "assets/shoes.png"),
  Category(title: "Laptops", image: "assets/laptops.jpg"),
  Category(title: "Mobiles", image: "assets/mobiles.jpg"),
  Category(title: "Fashion", image: "assets/fashion.png"),
  Category(title: "Cameras", image: "assets/cameras.jpg"),
  Category(title: "Headphones", image: "assets/headphones.jpeg"),
  Category(title: "Accessories", image: "assets/accessories.jpg"),
];