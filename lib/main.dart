import 'package:add_to_cart/page/navigation_bar_page/navigation_bar_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Benton_Sans'),
      home: NavigationBarPage(),
    );
  }
}
