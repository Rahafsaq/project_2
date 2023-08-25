import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_2/components/favorite.dart';
import 'package:project_2/pages/home_page.dart';
import 'package:project_2/pages/setting.dart';

import '../pages/cart.dart';
import '../pages/login.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const Cart(),
      const LogIn(
        oldEmail: 'Rahaf@gmail.com',
      ),
      const Favorite(),
      Setting(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: 'Setting',
          ),
        ],
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
          log(currentIndex.toString());
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
