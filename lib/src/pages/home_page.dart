import 'package:flutter/material.dart';
import 'package:food/src/models/food_model.dart';
import 'package:food/src/scoped_model/food_model.dart';
import 'package:food/src/widget/bought_foods.dart';
import 'package:food/src/widget/food_category.dart';
import 'package:food/src/widget/home_top_info.dart';
import 'package:food/src/widget/search_field.dart';
import 'package:food/src/data/food_data.dart';

class HomePage extends StatefulWidget {
  final FoodModel foodModel;
  HomePage(this.foodModel);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Food> _foods = foods;


  @override
  void initState() {
    // TODO: implement initState
    widget.foodModel.fetchFoods();
    super.initState();
  }
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
                  'Salam',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.yellow[200],
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Column(children: widget.foodModel.foods.map(_buildFoodItem).toList()),
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
      imagePath: "asset/images/salad.jpeg",
      price: food.price,
    ),
  );
}
