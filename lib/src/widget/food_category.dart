import 'package:flutter/material.dart';
import 'package:food/src/models/category.dart';
import 'package:food/src/widget/food_card.dart';

import '../data/category_data.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _category = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _category.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
              categoryName: _category[index].categoryName,
              imagePath: _category[index].imagePath,
              numberOfItem: _category[index].numberOfItem);
        },
      ),
    );
  }
}
