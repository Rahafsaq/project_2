import 'package:flutter/material.dart';

import '../models/product.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.product});
  static const h1 = 150.0;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
            width: h1,
            height: h1,
          ),
          const Spacer(),
          const Icon(
            Icons.list,
            color: Color(0xff74ac2c),
          ),
        ]),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Image.network(
            product.imageUrl,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              product.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              product.description,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Text(
                  'Price:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  '${product.price} SAR',
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  Data.cart.add(product);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff74ac2c),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(250, 55),
                ),
                child: const Text(
                  'Add to cart',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
