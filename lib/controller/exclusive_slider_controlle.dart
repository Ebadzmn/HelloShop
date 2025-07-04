import 'package:e_commarce_v2_flutter/data/models/exclusive_model.dart';
import 'package:get/get.dart';

class ExclusiveSliderControlle extends GetxController {
  var sliderItem = <ExclusiveModel>[
    ExclusiveModel(
        image:
            'https://img.freepik.com/free-psd/close-up-apples-isolated_23-2151598206.jpg',
        productName: 'Apple Organic',
        productPrice: '200',
        productDetails: '5pcs, PriceG'),
    ExclusiveModel(
        image:
            'https://img.freepik.com/premium-photo/close-up-bananas-against-white-background_1048944-27169778.jpg',
        productName: 'Banana Organic',
        productPrice: '240',
        productDetails: '8pcs, PriceG'),
    ExclusiveModel(
        image:
            'https://img.freepik.com/free-psd/close-up-apples-isolated_23-2151598206.jpg',
        productName: 'Apple Organic',
        productPrice: '200',
        productDetails: '5pcs, PriceG'),
  ].obs;
}
