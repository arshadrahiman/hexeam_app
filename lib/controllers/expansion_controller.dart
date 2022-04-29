import 'package:get/get.dart';
import 'package:hexmmart/models/categories_model.dart';
import 'package:hexmmart/services/categories_services.dart';
import 'package:hexmmart/services/product_services.dart';

class CategoryController extends GetxController {
  var categoryModel = <CategoryModel>[].obs;
  var loading = true.obs;
  @override
  void onInit() {
    FetchData();

    super.onInit();
  }

  FetchData() async {
    try {
      var CategoryResult = await CategoryService().getData();
      if (CategoryResult != null) {
        categoryModel.value = CategoryResult;
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar('title', "$e");
      loading.value = false;
    }
  }
}
