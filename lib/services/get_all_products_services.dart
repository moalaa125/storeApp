import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );
    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> ProductList = [];

    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromJson(data[i]));
      print(ProductList[i].id);
    }
    return ProductList;
  }
}
