import 'package:e_commarce_v2_flutter/data/dummydata/categorydummy.dart';
import 'package:e_commarce_v2_flutter/data/models/category_model.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  var categoryList = <CategoryModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadCategory();
  }

  void loadCategory() {
    categoryList.value = categories;
  }
}
