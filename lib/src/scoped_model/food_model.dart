import 'dart:convert';

import 'package:food/src/models/food_model.dart';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';

class FoodModel extends Model {
  List<Food> _foods = [];

  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  Future<Null> fetchFoods() {
    return http
        .get(Uri.parse("http://192.168.1.113/food_backend/config/config1.php"))
        .then((http.Response response) {
      final List fetchData = json.decode(response.body);
      final List<Food> fetchFoodItems = [];
      print(fetchData);
      fetchData.forEach((data) {
        Food food = Food(
            id: data["id"],
            name: data["title"],
            imagePath: data["imagePath"],
            category: data["category"],
            price: double.parse(data["price"]),
            discount: double.parse(data['discount']));
        fetchFoodItems.add(food);
      });
      _foods = fetchFoodItems;
      print(_foods);
    });
  }
}
