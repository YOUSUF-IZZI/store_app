import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:store_app/src/features/feature1/domain_layer/models/product_model.dart';


class AddProductService
{
  Future<ProductModel> post({required String title, required String price, required String description, required String image, required String category}) async
  {
    http.Response response = await http.post(
        Uri.parse('https://fakestoreapi.com/products'),
        body: {
          'title': title,
          'price': price,
          'description': description,
          'image': image,
          'category': category,
        },
        headers: {
          'Accept' : 'application/json',
          'Content-Type' : 'application/x-www-form-urlencoded',
        }
    );
    if (response.statusCode == 200) {
      Map<String,dynamic> data = jsonDecode(response.body);
      // to convert from map to the model
      return ProductModel.fromJson(data);
    } else {
      // also jsonDecode the response body
      throw Exception('you get status code: ${response.statusCode},so there is a problem with post operation says: ${jsonDecode(response.body)} ------------');
    }
  }

}