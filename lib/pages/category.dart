import 'package:flutter/material.dart';
import 'package:project_2/components/navbar.dart';

class Category extends StatelessWidget {
  const Category({super.key});
  static const h1 = 150.0;
  static const w1 = 150.0;
  static const pic2h = 160.0;
  static const pic2w = 210.0;
  static const pic4h = 142.0;
  final cas = 10.0;
  final cas2 = 10.0;
  final cac = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
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
        // SingleChildScrollView(
        //   child:
        Column(children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Categories',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          GridView.count(
            primary: false,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            crossAxisCount: cac,
            mainAxisSpacing: cas2,
            crossAxisSpacing: cas,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                width: 200,
                height: 200,
                child: Column(children: [
                  InkWell(
                    onTap: () {
                      final navigator = Navigator.of(context);
                      navigator.push(MaterialPageRoute(builder: (context) => const NavBar()));
                    },
                    child: Image.network(
                      'https://i0.wp.com/totimes.ca/wp-content/uploads/2017/01/shakeshack.jpg?fit=2048%2C1365&ssl=1',
                      width: 200,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Burger', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNAUqUEXz0VpsO6FSG_sPcqIRpGGpVRT-scA&usqp=CAU',
                    width: 200,
                    height: 130,
                  ),
                  const Text(
                    'Chicken Burger',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqzZGA5QDIXMG9uDKUxoWzzMhzHtnSjiGkiungZeRT-8R1FBGy_5Xg8UOXlQ9dCV0lVnA&usqp=CAU',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Crinkle Cut Fries',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxThcFXnn8CKKMGtM3cG2VybNwjxfdeAx4Yg&usqp=CAU',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Cold drinks',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ]),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
