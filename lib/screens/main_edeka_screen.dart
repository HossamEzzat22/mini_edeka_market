import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session3/components/category_type_card.dart';
import 'package:session3/models/category_details_item.dart';
import 'package:session3/models/category_type_item.dart';
import 'package:session3/screens/total_price.dart';
import 'package:session3/services/sharedpreference_helper.dart';
import 'package:session3/services/sharedpreference_keys.dart';
import 'package:session3/utils/appnavigator.dart';

import '../components/category_details_card.dart';

class MainEdekaScreen extends StatefulWidget {
  final CategoryTypeCard? categoryTypeCard;


  MainEdekaScreen({ required this.categoryTypeCard});

  @override
  State<MainEdekaScreen> createState() => _MainEdekaScreenState();
}

class _MainEdekaScreenState extends State<MainEdekaScreen> {
  bool isActive = true;
  double total = 0;
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.view_headline,
            color: Colors.grey,
          ),
        ),
        title: Center(
          child: Text(
            'EDEKA',
            style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.indigo,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100]),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'search product here',
                          style: TextStyle(color: Colors.grey[300]),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100]),
                  child: MaterialButton(
                    onPressed: () {},
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apps_sharp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final myType =MyType[index];

                  return GestureDetector(

                      child: CategoryTypeCard(categoryItem: myType,color:index==ind?Colors.green:Colors.white, textColor: ind==index?Colors.black:Colors.grey.shade400, iconColor: ind==index?Colors.white:Colors.grey.shade400,),                    onTap: () {
                      setState(() {
                        ind = index;
                      });

                    },
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                itemCount: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: MyType[ind].product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.63,
                  ),
                  itemBuilder: (context, index) => CategoryDetailsCard(
                      categoryDetailsItem: MyType[ind].product[index])),
            ),
            FloatingActionButton(
              heroTag: "454",
              onPressed: () {
                setState(() {
                  //print(total);
                  total = (total +
                      (SharedPrefrenceHelper.getData(
                              key: SharedPrefrenceKeys.priceKey) *
                          SharedPrefrenceHelper.getData(
                              key: SharedPrefrenceKeys.counterKey)));
                  //print(total);
                  SharedPrefrenceHelper.saveData(
                      key: SharedPrefrenceKeys.totalKey, value: total);
                  AppNavigator(context, false, TotalPrice());
                });
              },
              child: Icon(
                Icons.add_shopping_cart_sharp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
