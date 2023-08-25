import 'package:flutter/material.dart';
import 'package:project_2/components/pickdelivery.dart';

import 'story.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Text(
            'WELCOME TO',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'SHAKE SHACK',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PickDelivery()),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff74ac2c),
              shape: const StadiumBorder(),
              minimumSize: const Size(50, 55),
            ),
            child: const Text('ORDER NOW'),
          ),
          InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(MaterialPageRoute(builder: (context) => const Story()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Story behind',
                style: TextStyle(color: Color(0xff74ac2c), fontSize: 16, decoration: TextDecoration.underline),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
