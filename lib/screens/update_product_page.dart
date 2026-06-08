import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_text_filed.dart';
import 'package:store_app/widgets/cutom_button.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  static String id = 'update_product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName;

  int? productPrice;

  String? productDescription;

  String? productImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text('Update Product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFiled(
              hintText: 'Product Name',
              onChanged: (data) {
                productName = data;
              },
            ),
            CustomTextFiled(
              hintText: 'Product Description',
              onChanged: (data) {
                productDescription = data;
              },
            ),
            CustomTextFiled(
              keyBoardType: TextInputType.number,
              hintText: 'Product Price',
              onChanged: (data) {
                productPrice = int.parse(data);
              },
            ),
            CustomTextFiled(
              hintText: 'Product Image',
              onChanged: (data) {
                productImage = data;
              },
            ),
            SizedBox(height: 20),
            CustomButton(text: 'send'),
          ],
        ),
      ),
    );
  }
}
