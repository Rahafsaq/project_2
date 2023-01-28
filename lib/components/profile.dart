import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
              height: 150,
              width: 150,
            ),
            const SizedBox(
              width: 62,
            ),
            const Spacer(),
            const Icon(
              Icons.shopping_cart,
              color: Colors.green,
            ),
            const Icon(
              Icons.list,
              color: Colors.green,
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff74ac2c),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          const Icon(Icons.lock_open_outlined, size: 120, color: Colors.black
              // color: Color(0xff009e00),
              ),
          const Text(
            'Login',
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 136, 139, 136),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email*',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: const Color.fromARGB(255, 136, 139, 136)),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password*',
                ),
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 136, 139, 136),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(300, 55)),
              child: const Text(
                'Log in',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onPressed: () {}),
        ]),
      ),
    );
  }
}
