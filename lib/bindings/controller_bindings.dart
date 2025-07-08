import 'package:e_commarce_v2_flutter/controller/category_controller.dart';
import 'package:e_commarce_v2_flutter/controller/exclusive_controllerv2.dart';
import 'package:e_commarce_v2_flutter/controller/groceries_controller.dart';
import 'package:e_commarce_v2_flutter/controller/navbar_controller.dart';
import 'package:e_commarce_v2_flutter/controller/productList_byCategoryID.dart';
import 'package:e_commarce_v2_flutter/controller/product_details_controller.dart';
import 'package:e_commarce_v2_flutter/controller/slider_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SliderController());
    // Get.put(ExclusiveSliderControlle());
    Get.put(GroceriesController());
    Get.put(ExclusiveControllerv2());
    Get.put(BottomNavController());
    Get.put(CategoryController());
    Get.put(ProductDetailsController());
    Get.put(ProductlistBycategoryid());
    // TODO: implement dependencies
  }
}
