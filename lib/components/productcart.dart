import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.product,
    required this.onDelete,
  });
  static const h1 = 370.0;
  static const w1 = 350.0;
  final Product product;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: const BorderRadius.all(Radius.circular(12))),
          width: 400,
          height: 400,
          clipBehavior: Clip.hardEdge,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(product.imageUrl),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  Text(product.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Data.cart.remove(product);
                      Data.checkout.remove(product);
                      onDelete();
                    },
                    child: const Icon(Icons.clear, color: Color(0xff74ac2c)),
                  ),
                ]),
                const SizedBox(height: 4),
                Text(product.description),
                const SizedBox(height: 4),
                const SizedBox(height: 4),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text('Price:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('${product.price} SAR', style: const TextStyle(fontWeight: FontWeight.bold)),
                ]),
                const SizedBox(height: 4),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text('Quantity', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(children: const [
                    InkWell(child: Icon(Icons.add)),
                    SizedBox(width: 12),
                    Text('1', style: TextStyle(fontSize: 20)),
                    SizedBox(width: 12),
                    InkWell(child: Icon(Icons.remove)),
                  ]),
                ]),
                const SizedBox(height: 4),
                const SizedBox(height: 4),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  const Text('Total:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('${product.price} SAR', style: const TextStyle(fontWeight: FontWeight.bold)),
                ]),
              ]),
            ),
          ]),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
