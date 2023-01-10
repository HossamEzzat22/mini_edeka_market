import 'package:flutter/material.dart';
import 'package:session3/models/category_details_item.dart';
import 'package:session3/services/sharedpreference_helper.dart';
import 'package:session3/services/sharedpreference_keys.dart';



class CategoryDetailsCard extends StatefulWidget {
 final CategoryDetailsItem categoryDetailsItem;


 CategoryDetailsCard({required this.categoryDetailsItem});
 int counter = 0;

  @override
  State<CategoryDetailsCard> createState() => _CategoryDetailsCardState();
}

class _CategoryDetailsCardState extends State<CategoryDetailsCard> {
 int counter = 0;

 @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 235,
          width: 155,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  child: Stack(
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          image:NetworkImage(widget.categoryDetailsItem.image) ,
                        ),
                        const Align(
                            alignment: Alignment.topRight,
                            child:
                            Icon(Icons.favorite_border))
                      ]
                  ),
                ),
                Text(
                  widget.categoryDetailsItem.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.categoryDetailsItem.country,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                  (widget.categoryDetailsItem.price).toString(),
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.categoryDetailsItem.discount,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      mini: true,
                      onPressed: (){
                        setState(() {
                          counter ++ ;
                          SharedPrefrenceHelper.saveData(key: SharedPrefrenceKeys.counterKey, value: counter);
                          SharedPrefrenceHelper.saveData(key: SharedPrefrenceKeys.priceKey, value: widget.categoryDetailsItem.price);
                        });
                      },
                      child: const Icon(
                          Icons.add
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
        Text(
          'Counter : ${counter}'
        )
      ]
    );
  }
}
