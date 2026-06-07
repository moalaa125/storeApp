import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

class UpdateProduct {
  Future<dynamic> updateProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
  }) async {
    Future<dynamic> data = Api().put(
      url: 'https://fakestoreapi.com/products/$id',
    );
  }
}
