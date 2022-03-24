import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image(image: AssetImage("asset/images/burger1.jpeg")),
          Column(
            children: [
              Text('Burger'),
              Text('55 kinds'),
            ],
          )
        ],
      ),
    );
  }
}
