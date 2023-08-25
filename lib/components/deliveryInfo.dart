import 'package:flutter/material.dart';
import 'package:project_2/components/payment.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

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
          const Spacer(),
          const Icon(
            Icons.list,
            color: Color(0xff74ac2c),
          ),
        ]),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Delivery Information',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'First Name', border: InputBorder.none),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: TextField(decoration: InputDecoration(hintText: 'Last Name', border: InputBorder.none)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: TextField(decoration: InputDecoration(hintText: 'Email', border: InputBorder.none)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                height: 48,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(children: const [
                    Text('Choose  City', style: TextStyle(fontSize: 15)),
                    Spacer(),
                    Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.arrow_drop_down)),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: TextField(decoration: InputDecoration(hintText: 'District Name', border: InputBorder.none)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                width: 400,
                child: const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: TextField(decoration: InputDecoration(hintText: 'Home Number', border: InputBorder.none)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const Payment()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff74ac2c),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(150, 55),
                ),
                child: const Text('GO TO PAY'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
