import 'package:get/get.dart';
import 'package:hexmmart/models/product_models.dart';
import 'package:hexmmart/services/product_services.dart';

class ProductController extends GetxController {
  var productModel = <ProductModels>[].obs;
  var loading = true.obs;
  @override
  void onInit() {
    FetchData();

    super.onInit();
  }

  FetchData() async {
    try {
      var ProductResult = await ProductService().getData();
      if (ProductResult != null) {
        productModel.value = ProductResult;
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar('title', "$e");
      loading.value = false;
    }
  }
}
