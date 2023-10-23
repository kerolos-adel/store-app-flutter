import 'package:http/http.dart' as http;

import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data = await Api().get(url:"https://fakestoreapi.com/products");

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
      print(data[i]);
    }
    return productsList;
  }
}
