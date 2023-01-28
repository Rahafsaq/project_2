import 'package:flutter/material.dart';

import '../models/data.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 62,
            ),
            const Text(
              'Cart',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            const Icon(
              Icons.list,
              color: Colors.green,
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff74ac2c),
      body: ListView(children: [
        for (final product in Data.cart)
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ProductCart(
                product: product,
                onDelete: () {
                  setState(() {});
                },
              ),
            ),
          ),
      ]),
    );
  }
}

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.product,
    required this.onDelete,
  });

  final Product product;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 370,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl),
          Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            Data.cart.remove(product);
                            onDelete();
                          },
                          child: const Icon(Icons.clear, color: Color(0xff74ac2c))),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(product.description),
                  const SizedBox(
                    height: 4,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Price:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${product.price} SAR',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [
                          InkWell(child: Icon(Icons.add)),
                          SizedBox(width: 12),
                          Text(
                            '1',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(width: 12),
                          InkWell(child: Icon(Icons.remove)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${product.price} SAR',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
