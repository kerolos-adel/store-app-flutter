import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';

import '../widgets/custom_text_feild.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({Key? key}) : super(key: key);
  static String id = "update product";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, des, image;
  String? price;
  bool isloding = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
        inAsyncCall: isloding,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Update Product",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView(
            children: [
              defaultFormField(
                hint: "Product Name",
                inputType: TextInputType.text,
                onChanged: (date) {
                  productName = date;
                },
              ),
              defaultFormField(
                hint: "Description",
                inputType: TextInputType.text,
                onChanged: (date) {
                  des = date;
                },
              ),
              defaultFormField(
                hint: "Price",
                inputType: TextInputType.number,
                onChanged: (date) {
                  price = date;
                },
              ),
              defaultFormField(
                hint: "Product Name",
                onChanged: (date) {
                  image = date;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              defaultButton(
                str: "Update",
                onTap: () async {
                  isloding = true;
                  setState(() {});
                  try {
                    await UpdateProduct().updateProduct(
                        id: product.id,
                        title: productName == null ? product.title : productName!,
                        price: price == null ? product.price.toString() : price!,
                        desc: des == null ? product.description : des!,
                        image: image == null ? product.image : image!,
                        category: product.categoty);
                    print("success");
                  } catch (e) {
                    print(e.toString());
                  }
                  isloding = false;
                  setState(() {});
                },
              ),
            ],
          ),
        ));
  }
}
