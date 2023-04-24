import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/category_model.dart';

class CategoryServices {
  Future<CategoryModel> getCategory({required String catName}) async {
    String baseUrl = 'https://www.themealdb.com/api/json/v1/1/categories.php';
    Uri url = Uri.parse('$baseUrl');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    CategoryModel category=CategoryModel.fromJson(data);

    return category;
  }
}
