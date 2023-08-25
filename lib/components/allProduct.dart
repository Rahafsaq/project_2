import 'package:flutter/material.dart';
import 'package:project_2/components/details.dart';
import 'package:project_2/models/product.dart';

class AllProduct extends StatefulWidget {
  static const h1 = 310.0;
  static const w1 = 310.0;
  const AllProduct({super.key, required this.product});
  final Product product;

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    Color heartColor = Data.favorite.contains(widget.product) ? Colors.red : Colors.black;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      clipBehavior: Clip.hardEdge,
      width: 400,
      height: 340,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
          onTap: () {
            final navigator = Navigator.of(context);
            navigator.push(
              MaterialPageRoute(
                builder: (context) => Details(
                  product: widget.product,
                ),
              ),
            );
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
                    if (heartColor == Colors.black) {
                      heartColor = Colors.red;
                      Data.favorite.add(widget.product);
                    } else {
                      heartColor = Colors.black;
                    }
                  });
                },
                child: Icon(Icons.favorite, color: heartColor),
              ),
              const SizedBox(
                width: 4,
              ),
              InkWell(
                onTap: () {
                  Data.cart.add(widget.product);
                  Data.checkout.add(widget.product);
                  showDialog(
                    context: context,
                    builder: (__) {
                      return Dialog(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${widget.product.name} Added successfully',
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff74ac2c),
                                  shape: const StadiumBorder(),
                                  minimumSize: const Size(50, 40),
                                ),
                                child: const Text('Okay'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Icon(Icons.shopping_cart),
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}
