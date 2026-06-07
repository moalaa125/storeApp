import 'package:store_app/helper/api.dart';

class AddProduct {
  Future<List<dynamic>> addProduct() async {
    List<dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
    );
    return data;
  }
}
