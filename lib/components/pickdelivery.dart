import 'package:flutter/material.dart';

import '../pages/category.dart';

class PickDelivery extends StatelessWidget {
  const PickDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff74ac2c),
      shape: const StadiumBorder(),
      minimumSize: const Size(50, 55),
    );
    return Scaffold(
      body: Center(
        child: Column(children: [
          Image.network(
            'https://res.cloudinary.com/sagacity/image/upload/c_crop,h_3280,w_4928,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/Chick_n_Shack_and_ShackBurger_Evan_Sung_eufntn.jpg',
            width: 600,
            height: 340,
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const Category()),
                      ),
                    );
                  },
                  style: styleFrom,
                  child: const Text('Pick-Up'),
                ),
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const Category()),
                      ),
                    );
                  },
                  style: styleFrom,
                  child: const Text('Delivery'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            width: 450,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter an Address',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
