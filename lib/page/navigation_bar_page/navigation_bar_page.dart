import 'package:add_to_cart/page/shopping_page/shopping_page.dart';
import 'package:add_to_cart/page/cart_page/cart_page.dart';
import 'package:flutter/material.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  List<Widget> tabs = [
    const ShoppingPage(),
    const CartPage(),
  ];

  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs.elementAt(currentIndexPage),
      // BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: Colors.green[400],
        currentIndex: currentIndexPage,
        onTap: (value) {
          setState(() {
            currentIndexPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.shopping_bag),
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Shopping'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart'),
        ],
      ),
    );
  }
}
