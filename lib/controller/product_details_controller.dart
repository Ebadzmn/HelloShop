import 'package:e_commarce_v2_flutter/data/models/product_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final pageController = PageController();
  var currentIndex = 0.obs;
  var productDetails = Rxn<ProductDetailsModel>();
  var isFavourite = false.obs;
  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // print("🔧 Controller initialized");
    loadSampleProduct();
  }

  void loadSampleProduct() {
    productDetails.value = ProductDetailsModel(
        images: [
          'https://t4.ftcdn.net/jpg/12/29/54/53/240_F_1229545365_2jbwNqIKWVu6WqCALD2h3ynEqdRJUYd5.jpg',
          'https://t3.ftcdn.net/jpg/05/39/60/90/240_F_539609028_vqdEYa7GROujPxhItIlLV2e7cEEUVFpT.jpg',
          'https://t4.ftcdn.net/jpg/14/14/83/47/240_F_1414834705_M0ZHbZiCUNzjthIxN4sOAg6Hb5eLUgNw.jpg',
        ],
        productName: 'Naturel Red Apple',
        productDescription:
            'An apple is a round, edible fruit produced by an apple tree (Malus spp.). Fruit trees of the orchard or domestic apple (Malus domestica), the most widely grown in the genus, are cultivated worldwide. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found. Apples have been grown for thousands of years in Eurasia before they were introduced to North America by European colonists. ',
        productQuantity: '1',
        productPrice: '200',
        productRating: '4.5',
        productKGprice: '1kg, priceG');
  }

  void onPageChanged(int index) {
    currentIndex.value = index;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
}
