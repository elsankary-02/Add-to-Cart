import 'package:add_to_cart/core/components/constant/image_manger.dart';

class ItemsModel {
  final String image;
  final String titel;

  final int price;

  ItemsModel({required this.image, required this.titel, required this.price});
}

List<ItemsModel> items = [
  ItemsModel(
    image: ImageManger.kIceCream,
    titel: 'Ice Cream',
    price: 5,
  ),
  ItemsModel(
    image: ImageManger.kSolves,
    titel: 'Solves',
    price: 7,
  ),
  ItemsModel(
    image: ImageManger.kFruitSoup,
    titel: 'Fruit Soup',
    price: 20,
  ),
  ItemsModel(
    image: ImageManger.kLentilsSoup,
    titel: 'Lentils Soup',
    price: 25,
  ),
  ItemsModel(
    image: ImageManger.kMeat,
    titel: 'Meat',
    price: 44,
  ),
  ItemsModel(
    image: ImageManger.kPizza,
    titel: 'Pizza',
    price: 12,
  ),
  ItemsModel(
    image: ImageManger.kPasta,
    titel: 'Pasta',
    price: 35,
  ),
  ItemsModel(
    image: ImageManger.kVegetableSalad,
    titel: 'Vegetable Salad',
    price: 15,
  ),
];
