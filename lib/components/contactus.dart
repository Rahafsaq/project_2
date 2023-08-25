import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
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
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Image.network('https://cdn-icons-png.flaticon.com/512/4406/4406234.png', width: 100, height: 100),
              const SizedBox(
                height: 20,
              ),
              Image.network('https://cdn-icons-png.flaticon.com/512/49/49351.png', width: 100, height: 100),
              const SizedBox(
                height: 20,
              ),
              Image.network('https://cdn-icons-png.flaticon.com/512/4406/4406253.png', width: 100, height: 100),
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.email_outlined,
                size: 110,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
