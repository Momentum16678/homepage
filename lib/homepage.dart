import 'package:flutter/material.dart';
import 'package:homepage/cart_page.dart';
import 'package:homepage/home_item_page.dart';
import 'package:homepage/location_page.dart';
import 'package:homepage/menu_page.dart';
import 'package:homepage/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const MenuPage(),
    const CartPage(),
    const HomeItemPage(),
    const LocationPage(),
    const ProfilePage()
  ];

  int currentIndex = 2;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromRGBO(254, 106, 1, 1),
        unselectedItemColor: const Color.fromRGBO(136, 136, 136, 1),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 24,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_location), label: 'Location'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
