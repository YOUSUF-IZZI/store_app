import 'dart:convert';
import 'package:store_app/src/features/feature1/domain_layer/models/product_model.dart';
import 'package:http/http.dart' as http ;


class CategoryService
{
  Future<List<ProductModel>> getCategoryProducts({required String categoryName}) async
  {
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));
    if (response.statusCode == 200) {
      List<dynamic> apiData = jsonDecode(response.body);

      List<ProductModel> productsList = [];
      for(var i in apiData){
        productsList.add(ProductModel.fromJson(apiData[i]));
      }
      return productsList;
    } else {
      throw Exception('There is a problem with status code which is ------ ${response.statusCode} -----');
    }
  }

}