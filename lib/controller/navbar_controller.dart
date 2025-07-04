import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectIndex = 0.obs;
  void changeTab(int index) {
    selectIndex.value = index;
  }
}
