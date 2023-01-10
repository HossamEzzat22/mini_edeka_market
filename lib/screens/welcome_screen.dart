import 'package:flutter/material.dart';

class Welcome_Screen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Stack(
          children: [
            Container(
            height: double.infinity,
            child:
            Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-56228.jpg'
              ),
            ),
          ),
            Center(
              child: Text(
                'EDEKA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            
          ]
        ),
      ),
    );
  }
}
