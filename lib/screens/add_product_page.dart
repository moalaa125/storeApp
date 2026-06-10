import 'package:flutter/material.dart';
import 'package:store_app/services/add_product_service.dart';
import 'package:store_app/widgets/custom_buttom_nav.dart';
import 'package:store_app/widgets/custom_dropdown.dart';
import 'package:store_app/widgets/custom_text_filed.dart';
import 'package:store_app/widgets/cutom_button.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  static String id = 'add_product';

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? productName;

  int? productPrice;

  String? productDescription;

  String? productImage;

  String? productCategory;

  bool isLoading = false;

  final List<String> categories = [
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing",
  ];

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        extendBody: true,
        
        backgroundColor: Color(0xFFFCF8FA),
        appBar: AppBar(
          backgroundColor: Color(0xFFFCF8FA),
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text('Add Product'),
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
              CustomDropdown(
                items: categories,
                initialValue: productCategory,
                onChanged: (value) {
                  setState(() {
                    productCategory = value;
                  });
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
              CustomButton(
                text: 'Add',
                ontap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  try {
                    await addNewProduct();
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Product Added Successfully'),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error: ${e.toString()}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  } finally {
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addNewProduct() async {
    final addProductService = AddProduct();
    await addProductService.addProduct(
      title: productName!,
      price: productPrice!.toDouble(),
      description: productDescription!,
      category: productCategory!,
      image: productImage!,
    );
  }
}
