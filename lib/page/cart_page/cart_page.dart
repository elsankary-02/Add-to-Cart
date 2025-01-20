import 'package:add_to_cart/core/components/constant/color_manger.dart';
import 'package:add_to_cart/core/components/model/items_model.dart';
import 'package:flutter/material.dart';

enum Delete { remove }

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final variableItems = items[index];
          return Card(
            child: ListTile(
              leading: Image.asset(
                variableItems.image,
                fit: BoxFit.cover,
              ),
              //! titel
              title: Text(
                variableItems.titel,
                style:
                    textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
              ),
              //! price
              subtitle: RichText(
                text: TextSpan(
                    style: textTheme.titleLarge!
                        .copyWith(color: ColorManger.kGlodenColor),
                    children: [
                      //! علامه الدولار
                      TextSpan(text: r'$ '),
                      TextSpan(text: variableItems.price.toString()),
                    ]),
              ),
              //! add Container
              trailing:
                  GestureDetector(onTap: () {}, child: Icon(Icons.delete)),
            ),
          );
        },
      ),
    );
  }
}
