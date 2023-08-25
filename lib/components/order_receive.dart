import 'package:flutter/material.dart';
import 'package:project_2/components/navbar.dart';

class OrderReceive extends StatelessWidget {
  const OrderReceive({super.key});
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              width: 450,
              height: 200,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      'The order received successfully',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const NavBar()),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff74ac2c),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(200, 55),
                    ),
                    child: const Text('BACK TO MENU'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
