import 'package:hexmmart/models/product_models.dart';
import 'package:http/http.dart'as http;

class ProductService {
  var url = 'http://www.webprojects.hexeam.in/hexmart-app/api/customer/home?customer_id=25&recent_products_limit=10';
  Future<List<ProductModels>> getData() async {
    var productResp;
    var response = await http.get(Uri.parse(url));
    print(response.body);
    if (response.statusCode == 200) {
      productResp = ProductModels.fromRawJson(response.body);
    }
    return productResp;
  }
}