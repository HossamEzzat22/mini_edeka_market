import 'package:flutter/material.dart';
import 'package:session3/screens/main_edeka_screen.dart';
import 'package:session3/services/sharedpreference_helper.dart';
import 'package:session3/services/sharedpreference_keys.dart';
import 'package:session3/utils/appnavigator.dart';

class TotalPrice extends StatefulWidget {


  @override
  State<TotalPrice> createState() => _TotalPriceState();
}

class _TotalPriceState extends State<TotalPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              int counter =SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.counterKey);
              counter=0;
              AppNavigator(context, false, MainEdekaScreen(categoryTypeCard: null,));
            });
          }, icon: Icon(
          Icons.arrow_back
        ),
        ),
        title: Text(
          'Total price',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Total Price is ${SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.totalKey)}'
        ),
      ),
    );
  }
}
