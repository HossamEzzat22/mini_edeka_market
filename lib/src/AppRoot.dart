import 'package:flutter/material.dart';
import 'package:session3/screens/main_edeka_screen.dart';
import 'package:session3/screens/welcome_screen.dart';

class AppRoot extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainEdekaScreen(categoryTypeCard: null,),
    );
  }
}
