import 'dart:convert';

import 'package:food/src/models/food_model.dart';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';

class FoodModel extends Model {
  String base_url = "http://192.168.1.113/food_backend/config/config1.php";
  List<Food> _foods = [];

  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  Future<Null> fetchFoods() {
    var url = Uri.parse(base_url);
    return http.get(url).then((http.Response response) {
      final List fetchData = json.decode(response.body);
      fetchData.forEach((food) {
        print("foods $food");
      });
    });
  }
}
