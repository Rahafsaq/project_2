import 'package:flutter/material.dart';
import 'package:project_2/models/product.dart';

import 'favoriteList.dart';

class Favorite extends StatefulWidget {
  const Favorite({
    super.key,
  });

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  Color heartColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 100.0),
          child: Text(
            'Favorite',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        for (final product in Data.favorite)
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FavoriteList(
                product: product,
                onDelete: () {
                  setState(() {});
                },
              ),
            ),
          ),
      ]),
      backgroundColor: const Color(0xFFF3F1EB),
    );
  }
}
