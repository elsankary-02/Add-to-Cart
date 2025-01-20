import 'package:add_to_cart/core/components/constant/color_manger.dart';
import 'package:add_to_cart/core/components/model/items_model.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        //! AppBar Shopping Page
        appBar: AppBar(
          title: Text(
            'Shopping Page',
            style: textTheme.headlineMedium!
                .copyWith(fontWeight: FontWeight.w400, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: ColorManger.kMaterialColor,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 8),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final variableItems = items[index];
              return Card(
                child: Container(
                  decoration: BoxDecoration(),
                  height: 100,
                  child: Center(
                    child: ListTile(
                      leading: Image.asset(
                        variableItems.image,
                        fit: BoxFit.cover,
                      ),
                      //! titel
                      title: Text(
                        variableItems.titel,
                        style: textTheme.titleSmall!
                            .copyWith(fontWeight: FontWeight.w400),
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
                      trailing: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: ColorManger.kMaterialColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Add to Cart',
                            style: textTheme.labelMedium!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
