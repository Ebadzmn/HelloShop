import 'package:e_commarce_v2_flutter/controller/exclusive_slider_controlle.dart';
import 'package:e_commarce_v2_flutter/controller/groceries_controller.dart';
import 'package:e_commarce_v2_flutter/controller/navbar_controller.dart';
import 'package:e_commarce_v2_flutter/controller/product_details_controller.dart';
import 'package:e_commarce_v2_flutter/controller/slider_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SliderController());
    Get.put(ExclusiveSliderControlle());
    Get.put(GroceriesController());
    Get.put(BottomNavController());
    Get.put(ProductDetailsController());
    // TODO: implement dependencies
  }
}
