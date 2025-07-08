import 'package:e_commarce_v2_flutter/data/dummydata/dummy_products.dart';
import 'package:e_commarce_v2_flutter/data/models/product_model.dart';
import 'package:get/get.dart';

class ProductlistBycategoryid extends GetxController {
  var allProduct = <ProductModel>[].obs;
  var filterProduct = <ProductModel>[].obs;
  var currentCategoryId = -1;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    allProduct.addAll(dummyProducts);
    loadProductByCategoryId(1);
  }

  void loadProductByCategoryId(int categoryId) {
    currentCategoryId = categoryId;
    filterProduct.value = allProduct
        .where((product) => product.categoryId == categoryId)
        .toList();
  }
}
