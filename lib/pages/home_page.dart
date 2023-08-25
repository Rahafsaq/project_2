import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_2/components/allproduct.dart';
import 'package:project_2/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Timer timer;
  final ImageProvider = [
    Image.network(
      'https://i0.wp.com/totimes.ca/wp-content/uploads/2017/01/shakeshack.jpg?fit=2048%2C1365&ssl=1',
      key: const Key('1'),
      width: 500,
      height: 250,
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://pbs.twimg.com/media/EqBJXQcVoAEMIIX.jpg',
      height: 250,
      width: 500,
      fit: BoxFit.cover,
      key: const Key('2'),
    ),
    Image.network(
      'https://res.cloudinary.com/sagacity/image/upload/c_crop,h_3280,w_4928,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/Chick_n_Shack_and_ShackBurger_Evan_Sung_eufntn.jpg',
      height: 250,
      width: 500,
      fit: BoxFit.cover,
      key: const Key('3'),
    ),
    Image.network(
      'https://cdn.vox-cdn.com/thumbor/kW4Z9x8iciEkx73eJYqRHHAsM3I=/132x0:2265x1600/1400x1050/filters:focal(132x0:2265x1600):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/50959427/shakeshackhelenrosner.0.0.jpg',
      height: 250,
      width: 500,
      fit: BoxFit.cover,
      key: const Key('4'),
    ),
  ];
  int index = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() => index++);
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Center(
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
              width: 150,
              height: 150,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        const SingleChildScrollView(),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          child: ImageProvider[index % ImageProvider.length],
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        Center(
          child: Column(children: [
            const SizedBox(height: 30),
            // const SizedBox(height: 24),
            const Text(
              'Menu',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            for (final product in Data.products)
              Padding(padding: const EdgeInsets.all(30), child: AllProduct(product: product)),
            const SizedBox(height: 60),
          ]),
        ),
      ]),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
