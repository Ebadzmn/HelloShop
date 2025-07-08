import 'package:e_commarce_v2_flutter/data/dummydata/dummy_products.dart';
import 'package:e_commarce_v2_flutter/data/models/product_model.dart';
import 'package:get/get.dart';

class ExclusiveControllerv2 extends GetxController {
  var allProduct = <ProductModel>[].obs;
  var filterProduct = <ProductModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadProductById(1);
    print('gg $filterProduct');
  }

  void loadProductById(int categoryId) {
    allProduct.value = dummyProducts;
    filterProduct.value = allProduct
        .where((product) => product.categoryId == categoryId)
        .toList();
  }
}
