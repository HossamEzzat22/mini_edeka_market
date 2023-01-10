import 'package:flutter/material.dart';
import 'package:session3/models/category_details_item.dart';

class CategoryItem{

  final IconData? icon;
  final String? title;

  List<CategoryDetailsItem> product;


  CategoryItem({required this.product, this.icon, this.title});
}



List <CategoryItem> MyType = [
  CategoryItem(
    icon: Icons.bakery_dining, title: 'Bakery', product: [
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/lemon_1205-1668.jpg',
        title: 'Lemon',
        id: "5",
        country: 'Italy', price: 2, discount: '\$3'),
    //CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
       // title: 'Mango',
      //  country: 'Egypt', price: '\$3', discount: '\$3.5'),
    //CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/close-up-guava-fruit-pink-fresh-organic-with-leaves-whole-sliced-isolated-white-background-front-view_59529-246.jpg',
      //  title: 'Guava',
        //country: 'Australia', price: '\$2', discount: '\$3'),
    //CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
     //   title: 'Apple',
     //   country: 'Italy', price: '\$4', discount: '\$5'),
   // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/bananas_1339-1187.jpg',
       // title: 'Banana',
       // country: 'Espain', price: '\$1', discount: '\$1.5'),
    //CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/jabuticabas-freshly-harvested-bowl-baskets-arranged-straw-mat-selective-focus_309761-1982.jpg',
        //title: 'Graps',
        //country: 'Italy', price: '\$2', discount: '\$3'),
  ],),
  CategoryItem(icon: Icons.fence, title: 'Fruits', product: [
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/lemon_1205-1668.jpg',
        title: 'Lemon',
        country: 'Italy', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
        title: 'Mango',
        country: 'Egypt', price: 3, discount: '\$3.5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/close-up-guava-fruit-pink-fresh-organic-with-leaves-whole-sliced-isolated-white-background-front-view_59529-246.jpg',
    //     title: 'Guava',
    //     country: 'Australia', price: 2, discount: '\$3'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
    //     title: 'Apple',
    //     country: 'Italy', price: 2, discount: '\$5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/bananas_1339-1187.jpg',
    //     title: 'Banana',
    //     country: 'Espain', price: 2, discount: '\$1.5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/jabuticabas-freshly-harvested-bowl-baskets-arranged-straw-mat-selective-focus_309761-1982.jpg',
    //     title: 'Graps',
    //     country: 'Italy', price: 2, discount: '\$3'),
  ],),
  CategoryItem(icon: Icons.all_inclusive_sharp, title: 'Vegatables', product: [
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/lemon_1205-1668.jpg',
        title: 'Lemon',
        country: 'Italy', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
        title: 'Mango',
        country: 'Egypt', price: 3, discount: '\$3.5'),
    CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/close-up-guava-fruit-pink-fresh-organic-with-leaves-whole-sliced-isolated-white-background-front-view_59529-246.jpg',
        title: 'Guava',
        country: 'Australia', price: 2, discount: '\$3'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
    //     title: 'Apple',
    //     country: 'Italy', price: 2, discount: '\$5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/bananas_1339-1187.jpg',
    //     title: 'Banana',
    //     country: 'Espain', price: 2, discount: '\$1.5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/jabuticabas-freshly-harvested-bowl-baskets-arranged-straw-mat-selective-focus_309761-1982.jpg',
    //     title: 'Graps',
    //     country: 'Italy', price: 2, discount: '\$3'),
  ],),
  CategoryItem(icon: Icons.free_breakfast, title: 'Milk', product: [
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/lemon_1205-1668.jpg',
        title: 'Lemon',
        country: 'Italy', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
        title: 'Mango',
        country: 'Egypt', price: 3, discount: '\$3.5'),
    CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/close-up-guava-fruit-pink-fresh-organic-with-leaves-whole-sliced-isolated-white-background-front-view_59529-246.jpg',
        title: 'Guava',
        country: 'Australia', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
        title: 'Apple',
        country: 'Italy', price: 2, discount: '\$5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/bananas_1339-1187.jpg',
    //     title: 'Banana',
    //     country: 'Espain', price: 2, discount: '\$1.5'),
    // CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/jabuticabas-freshly-harvested-bowl-baskets-arranged-straw-mat-selective-focus_309761-1982.jpg',
    //     title: 'Graps',
    //     country: 'Italy', price: 2, discount: '\$3'),
  ],),
  CategoryItem(icon: Icons.device_hub, title: 'Devices', product: [
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/lemon_1205-1668.jpg',
        title: 'Lemon',
        id: "10",
        country: 'Italy', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/freshness-food-life-fruit-yellow_1203-5467.jpg',
        title: 'Mango',
        country: 'Egypt', price: 3, discount: '\$3.5'),
    CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/close-up-guava-fruit-pink-fresh-organic-with-leaves-whole-sliced-isolated-white-background-front-view_59529-246.jpg',
        title: 'Guava',
        country: 'Australia', price: 2, discount: '\$3'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/red-apple-with-green-leaf-white-background_1232-3290.jpg',
        title: 'Apple',
        country: 'Italy', price: 2, discount: '\$5'),
    CategoryDetailsItem(image: 'https://img.freepik.com/free-photo/bananas_1339-1187.jpg',
        title: 'Banana',
        country: 'Espain', price: 2, discount: '\$1.5'),
    CategoryDetailsItem(image: 'https://img.freepik.com/premium-photo/jabuticabas-freshly-harvested-bowl-baskets-arranged-straw-mat-selective-focus_309761-1982.jpg',
        title: 'Graps',
        country: 'Italy', price: 2, discount: '\$3'),
  ],)
];