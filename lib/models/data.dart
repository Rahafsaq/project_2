class Product {
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  static const name1 = 'rahaf';

  const Product({
    required this.imageUrl,
    required this.description,
    required this.name,
    required this.price,
  });
}

class Data {
  static List<Product> products = [
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4cb3ded9-96ac-4db7-bff5-32632c8bb7cf.jpg',
        name: 'ShackBurger',
        description: 'Cheeseburger topped with lettuce, tomato and ShackSauce',
        price: 25.00),
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4594eab8-338c-4ef0-b37e-1c7d86e59c4c.jpg',
        name: 'Shack Stack',
        description: 'Cheeseburger and a Shroom Burger topped with lettuce, tomato and ShackSauce',
        price: 40.00),
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/4cd6efc2-f86b-46a9-b77e-f071a6a6a9b8.jpg',
        name: 'Hamburger',
        description: '100% all-natural Angus beef burger',
        price: 20.00),
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/3b2fc085-356c-482b-961c-75b440e6b553.jpg',
        name: 'SmokeShack',
        description: 'Cheeseburger topped with veal bacon, spicy chopped cherry peppers and ShackSauce',
        price: 31.00),
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/8b1ba396-a6a6-4f0f-8dde-c4a62ce5c3d9.jpg',
        name: 'Veal Bacon & Cheese Fries',
        description: 'Crispy crinkle cut fries, topped with veal bacon and cheese sauce',
        price: 28.00),
    Product(
        imageUrl:
            'https://wi-q.cloud/i/800x,q80/2082e0b9-2e7a-468a-9286-cc928e7b57f7/product/f7d3e453-5d21-46e8-9050-b27f22a2f1c8.jpg',
        name: 'Black & White Shake',
        description: 'Handmade frozen custard ice cream, spun fresh daily',
        price: 22.00),
  ];
  static List<Product> cart = [];
}
