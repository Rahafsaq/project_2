import 'package:flutter/material.dart';
import 'package:project_2/components/allProduct.dart';
import 'package:project_2/models/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              width: 56,
            ),
            const Text(
              'Menu',
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
      body: ListView(
        children: [
          const SingleChildScrollView(),
          Center(
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  for (final product in Data.products)
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: AllProduct(
                        product: product,
                      ),
                    ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
