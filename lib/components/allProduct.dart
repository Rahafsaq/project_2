import 'package:flutter/material.dart';
import 'package:project_2/models/data.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 310,
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
                  Text(
                    product.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(product.description),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        '${product.price} SAR',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {
                            Data.cart.add(product);
                          },
                          child: Icon(Icons.shopping_cart)),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
