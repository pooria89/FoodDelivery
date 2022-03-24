import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItem;

  FoodCard(
      {required this.categoryName,
      required this.imagePath,
      required this.numberOfItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 13.0),
          child: Row(
            children: [
              Image(image: AssetImage(imagePath)),
              SizedBox(width: 10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    categoryName,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(numberOfItem.toString() + "Kinds",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.normal)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
