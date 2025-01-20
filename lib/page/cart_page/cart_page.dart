import 'package:add_to_cart/core/components/constant/color_manger.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart Page',
          style: textTheme.headlineMedium!
              .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: ColorManger.kMaterialColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
