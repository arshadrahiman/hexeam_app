import 'package:hexmmart/models/categories_model.dart';
import 'package:http/http.dart'as http;

class CategoryService {
  var url = 'http://webprojects.hexeam.in/hexmart-app/api/product-category/list';
  Future<List<CategoryModel>> getData() async {
    var catgryResp;
    var response = await http.get(Uri.parse(url));
    print(response.body);
    if (response.statusCode == 200) {
      catgryResp = CategoryModel.fromJson(response.body);
    }
    return catgryResp;
  }
}