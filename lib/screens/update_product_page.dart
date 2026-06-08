import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_text_filed.dart';
import 'package:store_app/widgets/cutom_button.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = 'update_product';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFiled(
            hintText: 'Product Name',
            onChanged: null,
          ),
          CustomTextFiled(
            hintText: 'Product Name',
            onChanged: null,
          ),
          CustomTextFiled(
            hintText: 'Product Name',
            onChanged: null,
          ),
          CustomTextFiled(
            hintText: 'Product Name',
            onChanged: null,
          ),
          SizedBox(height: 20),
          CustomButton(text: 'send')
        ],
      ),
    );
  }
}
