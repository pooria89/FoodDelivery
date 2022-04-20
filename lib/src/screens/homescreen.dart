import 'package:flutter/material.dart';
import 'package:food/src/data/food_data.dart';
import 'package:food/src/models/food_model.dart';
import 'package:food/src/widget/bought_foods.dart';
import 'package:food/src/widget/food_category.dart';
import 'package:food/src/widget/home_top_info.dart';
import 'package:food/src/widget/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          const SizedBox(height: 5.0),
          SearchField(),
          // header
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Frequently Bought Foods',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                child: Text(
                  'Foods',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Column(children: _foods.map(_buildFoodItem).toList()),
        ],
      ),
    );
  }
}

Widget _buildFoodItem(Food food) {
  return Container(
    margin: EdgeInsets.only(bottom: 15.0),
    child: BoughtFoods(
      id: food.id,
      name: food.name,
      category: food.category,
      discount: food.discount,
      imagePath: food.imagePath,
      price: food.price,
    ),
  );
}
