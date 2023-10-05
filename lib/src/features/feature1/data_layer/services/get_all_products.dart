import 'dart:convert';
import 'package:store_app/src/features/feature1/domain_layer/models/product_model.dart';
import 'package:http/http.dart' as http ;


class AllProductsService
{
  Future<List<ProductModel>> getAllProducts() async
  {
    http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> apiData = jsonDecode(response.body);
      // Convert received list to a List<our_model>
      List<ProductModel> productsList = [];
      for(int i = 0; i< apiData.length; i++){
        productsList.add(ProductModel.fromJson(apiData[i]));
      }
      return productsList;
    } else {
      throw Exception('There is a problem with status code which is ------ ${response.statusCode} -----');
    }
  }

}