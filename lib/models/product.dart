
class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: "Apple Airpods pro",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/airpods.png",
    price: 100,
    category: "Headphones",
    rate: 4.8,
  ),
  Product(
    title: "Women's Sweater",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/women's sweater.png",
    price: 60,
    category: "Fashion",
    rate: 4.8,
  ),
  Product(
    title: "Canon EOS R",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/CanonEOSR.png",
    price: 860,
    category: "Cameras",
    rate: 4.8,
  ),
  Product(
    title: "Macbook Air M2",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/macbook.png",
    price: 860,
    category: "Laptops",
    rate: 4.8,
  ),
  Product(
    title: "iPhone 14 Plus",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/iphone14plus.png",
    price: 860,
    category: "Mobiles",
    rate: 4.8,
  ),
  Product(
    title: "Axe Deodrant",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/axe.png",
    price: 860,
    category: "Accessories",
    rate: 4.8,
  ),
  Product(
    title: "Men's Denim Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fashion.png",
    price: 60,
    category: "Fashion",
    rate: 4.8,
  ),
  Product(
    title: "Nike Dunk High Blue",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes.png",
    price: 60,
    category: "Shoes",
    rate: 4.8,
  ),
  Product(
    title: "HP Pavillion Power 15",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/hppower15.png",
    price: 860,
    category: "Laptops",
    rate: 4.8,
  ),
  Product(
    title: "Acer Nitro 5",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/acernitro5.png",
    price: 860,
    category: "Laptops",
    rate: 4.8,
  ),
  Product(
    title: "Asus Vivobook 15",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/asusvivobook15.png",
    price: 860,
    category: "Laptops",
    rate: 4.8,
  ),
  Product(
    title: "Beats Solo 3",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beatssolo3.png",
    price: 100,
    category: "Headphones",
    rate: 4.8,
  ),
  Product(
    title: "JBL Club 700",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jblclub700.png",
    price: 100,
    category: "Headphones",
    rate: 4.8,
  ),
    Product(
    title: "JBL Live 500",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jbllive500.png",
    price: 100,
    category: "Headphones",
    rate: 4.8,
  ),
  Product(
    title: "iPhone 13 pro",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/iphone13pro.png",
    price: 860,
    category: "Mobiles",
    rate: 4.8,
  ),
  Product(
    title: "One Plus 10",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/oneplus10.png",
    price: 860,
    category: "Mobiles",
    rate: 4.8,
  ),
   Product(
    title: "Realme 10 pro",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/realme10pro.png",
    price: 860,
    category: "Mobiles",
    rate: 4.8,
  ),
];