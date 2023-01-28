import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_2/pages/home.dart';

import '../pages/cart.dart';
import 'profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

var currentIndex = 0;

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final pages = [const HomePage(), const Cart(), const Profile()];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
          log(currentIndex.toString());
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
