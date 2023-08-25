import 'package:flutter/material.dart';
import 'package:project_2/components/checkout.dart';

import '../components/productcart.dart';
import '../models/product.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  static const h1 = 150.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 115.0),
          child: Text(
            'Cart',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(children: [
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
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const Checkout()),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff74ac2c),
              shape: const StadiumBorder(),
              minimumSize: const Size(150, 55),
            ),
            child: const Text('Checkout'),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
