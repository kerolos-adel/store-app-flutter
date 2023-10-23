import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String gategoryName}) async {
    List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products/category/$gategoryName}");

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
