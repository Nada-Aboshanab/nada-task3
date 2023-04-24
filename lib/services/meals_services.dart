import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task2/models/meals_model.dart';

import '../models/category_model.dart';

class MealServices {
  Future<MealModel> getMeal({required String catName}) async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php';
    Uri url = Uri.parse('$baseUrl?c=$catName');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    MealModel meal=MealModel.fromJson(data);
    return meal;
  }
}
