import 'package:flutter/material.dart';
import 'package:session3/models/category_type_item.dart';

class CategoryTypeCard extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color iconColor;
  final CategoryItem categoryItem;
  CategoryTypeCard({required this.categoryItem,required this.color,required this.textColor,required this.iconColor});







  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border:Border.all(color: Color(0xfff2f3f5)),
              borderRadius: BorderRadius.circular(10),
              color: color,
          ),
          child: Icon(
            categoryItem.icon,
            color: iconColor,
            size: 40,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          categoryItem.title??"",
          style: TextStyle(
            color: textColor,
          ),
        )
      ],
    );
  }
}
