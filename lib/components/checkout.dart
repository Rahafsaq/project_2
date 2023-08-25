import 'package:flutter/material.dart';
import 'package:project_2/components/checkoutCard.dart';
import 'package:project_2/components/deliveryInfo.dart';

import '../models/product.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
            width: 150,
            height: 150,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Checkout',
            style: TextStyle(fontSize: 30),
          ),
          Expanded(
            child: ListView(
              children: [
                for (final product in Data.checkout)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: CheckOutCard(
                        product: product,
                        onDelete: () {
                          setState(() {});
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 400,
            height: 60,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(children: const [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '40 SAR',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ]),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const DeliveryInfo()),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff74ac2c),
              shape: const StadiumBorder(),
              minimumSize: const Size(150, 55),
            ),
            child: const Text('Place Order'),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
