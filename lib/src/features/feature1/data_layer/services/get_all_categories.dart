import 'dart:convert';
import 'package:http/http.dart' as http ;

class AllCategoriesService
{
  Future<List<dynamic>> getAllCategories() async
  {
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
      List<dynamic> apiData = jsonDecode(response.body);
      return apiData;
    } else {
      throw Exception('There is a problem with status code which is ------ ${response.statusCode} -----');
    }
  }
}