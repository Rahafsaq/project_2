import 'package:flutter/material.dart';
import 'package:project_2/components/order_receive.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  static const h1 = 150.0;
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text('Choose payment method', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(children: const [
                  Icon(Icons.payment_outlined, color: Color(0xff74ac2c)),
                  Text(
                    ' Credit card/Mastercard',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ]),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(children: const [
                  Icon(Icons.apple_outlined, color: Color(0xff74ac2c)),
                  Text(
                    ' Apple Pay',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ]),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(children: [
                  const Icon(
                    Icons.money_outlined,
                    color: Color(0xff74ac2c),
                  ),
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(MaterialPageRoute(builder: (context) => const OrderReceive()));
                    },
                    child: const Text(
                      ' Cash',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ]),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
