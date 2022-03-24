import 'package:flutter/material.dart';
import 'package:food/src/models/category.dart';
import 'package:food/src/widget/food_card.dart';

import '../data/category_data.dart';

class FoodCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<Category> _category = categories;
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard();
        },
      ),
    );
  }
}
