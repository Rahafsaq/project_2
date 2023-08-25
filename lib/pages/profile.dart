import 'package:flutter/material.dart';
import 'package:project_2/components/favorite.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PnbQqflCFbajzHLdQowsXnhbadu550DXA&usqp=CAU',
            width: 150,
            height: 150,
          ),
          const SizedBox(width: 62),
          const Spacer(),
          const Icon(
            Icons.list,
            color: Color(0xff74ac2c),
          ),
        ]),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(height: 40),
          const Text('Profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(children: const [
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Color(0xff74ac2c),
                    ),
                    Text(
                      ' Rahaf',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Icon(Icons.edit, color: Colors.grey),
                  ]),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Rahaf@gimail.com'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [
                const Icon(Icons.favorite, color: Color(0xff74ac2c)),
                InkWell(
                  onTap: () {
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const Favorite(),
                      ),
                    );
                  },
                  child: const Text(' My Favorite', style: TextStyle(fontSize: 20)),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  Icon(
                    Icons.payment_outlined,
                    color: Color(0xff74ac2c),
                  ),
                  Text(
                    ' My Card',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: const [
                Icon(Icons.wallet_outlined, color: Color(0xff74ac2c)),
                Text(' Wallet', style: TextStyle(fontSize: 20)),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.grey),
              ]),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  Icon(
                    Icons.food_bank,
                    color: Color(0xff74ac2c),
                  ),
                  Text(
                    ' My Orders',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            width: 450,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: const [
                  Icon(
                    Icons.share_outlined,
                    color: Color(0xff74ac2c),
                  ),
                  Text(
                    ' Share App',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
