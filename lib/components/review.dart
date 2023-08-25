import 'dart:async';

import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final pageController = PageController();
  late final Timer _timer;
  int currentPage = 0;
  final int numPages = 2;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < numPages - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var styleFrom = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff74ac2c),
      shape: const StadiumBorder(),
      minimumSize: const Size(50, 50),
    );
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
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                'Customer Review',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 250,
            child: PageView(scrollDirection: Axis.horizontal, controller: pageController, children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: 400,
                    height: 200,
                    child: Column(children: [
                      const SizedBox(width: 20),
                      Row(children: [
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child:
                              Image.network('http://cdn.onlinewebfonts.com/svg/img_554080.png', width: 55, height: 55),
                        ),
                        Column(children: const [
                          Text('Ahmad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Riyadh'),
                        ]),
                      ]),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'Distinguished products at competitive prices and upscale and respectful treatment.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(children: const [
                        SizedBox(width: 20),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                      ]),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    width: 400,
                    height: 200,
                    child: Column(children: [
                      const SizedBox(width: 20),
                      Row(children: [
                        const SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child:
                              Image.network('http://cdn.onlinewebfonts.com/svg/img_554080.png', width: 55, height: 55),
                        ),
                        Column(children: const [
                          Text('Sara', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Jeddah'),
                        ]),
                      ]),
                      const Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          'The food is delicious and fresh, fast delivery and good service.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(children: const [
                        SizedBox(width: 20),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded, color: Colors.yellow),
                        Icon(Icons.star_rate_rounded),
                      ]),
                    ]),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
                },
                style: styleFrom,
                child: const Text(
                  '<',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              ElevatedButton(
                onPressed: () {
                  pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
                },
                style: styleFrom,
                child: const Text(
                  '>',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
