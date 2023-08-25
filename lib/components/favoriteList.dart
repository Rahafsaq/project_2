import 'package:flutter/material.dart';

import '../models/product.dart';
import 'details.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({
    super.key,
    required this.product,
    required this.onDelete,
  });
  final Product product;
  final Function() onDelete;
  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  Color heartColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    Color heartColor = Data.favorite.contains(widget.product) ? Colors.red : Colors.black;

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(12))),
          width: 400,
          height: 340,
          clipBehavior: Clip.hardEdge,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                final navigator = Navigator.of(context);
                navigator.push(MaterialPageRoute(builder: (context) => Details(product: widget.product)));
              },
              child: Image.network(widget.product.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(widget.product.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(widget.product.description),
                const SizedBox(height: 4),
                Row(children: [
                  Text('${widget.product.price} SAR', style: const TextStyle(fontWeight: FontWeight.bold)),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (heartColor == Colors.red) {
                          heartColor = Colors.black;
                        } else {
                          heartColor = Colors.red;
                        }
                      });
                      Data.favorite.remove(widget.product);
                      widget.onDelete();
                    },
                    child: Icon(Icons.favorite, color: heartColor),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Data.cart.add(widget.product);
                    },
                    child: const Icon(Icons.shopping_cart),
                  ),
                ]),
              ]),
            ),
          ]),
        ),
      ],
    );
  }
}
