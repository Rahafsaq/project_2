class Product {
  final String imageUrl;
  final String name;
  final String description;
  final String price;

  const Product({
    required this.imageUrl,
    required this.description,
    required this.name,
    required this.price,
  });
}

class Data {
  static final List<Product> products = [
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4cb3ded9-96ac-4db7-bff5-32632c8bb7cf.jpg',
      description: 'Cheeseburger topped with lettuce, tomato and ShackSauce',
      name: 'ShackBurger',
      price: '25.0',
    ),
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4594eab8-338c-4ef0-b37e-1c7d86e59c4c.jpg',
      description: 'Cheeseburger and a Shroom Burger topped with lettuce, tomato and ShackSauce',
      name: 'Shack Stack',
      price: '40.0',
    ),
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4cd6efc2-f86b-46a9-b77e-f071a6a6a9b8.jpg',
      description: '100% all-natural Angus beef burger',
      name: 'Hamburger',
      price: '20.0',
    ),
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/3b2fc085-356c-482b-961c-75b440e6b553.jpg',
      description: 'Cheeseburger topped with veal bacon, spicy chopped cherry peppers and ShackSauce',
      name: 'SmokeShack',
      price: '31.0',
    ),
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/8b1ba396-a6a6-4f0f-8dde-c4a62ce5c3d9.jpg',
      description: 'Crispy crinkle cut fries, topped with veal bacon and cheese sauce',
      name: 'Veal Bacon & Cheese Fries',
      price: '28.0',
    ),
    const Product(
      imageUrl:
          'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/f7d3e453-5d21-46e8-9050-b27f22a2f1c8.jpg',
      description: 'Handmade frozen custard ice cream, spun fresh daily',
      name: 'Black & White Shake',
      price: '22.0',
    ),
  ];
  static final List<Product> cart = [];
  static final List<Product> details = [];
  static final List<Product> favorite = [];
  static final List<Product> checkout = [];
}
