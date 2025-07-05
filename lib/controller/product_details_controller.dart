import 'package:e_commarce_v2_flutter/data/models/product_details_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final pageController = PageController();
  var currentIndex = 0;
  var count = 0;
  var isDescriptionExpended = false;
  // var productDetails = Rxn<ProductDetailsModel>();
  ProductDetailsModel? productDetails;
  var isFavourite = false;
  void toggleFavourite() {
    isFavourite = !isFavourite;
    update();
  }

  void toggleDescription() {
    isDescriptionExpended = !isDescriptionExpended;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // print("🔧 Controller initialized");
    loadSampleProduct();
  }

  void loadSampleProduct() {
    productDetails = ProductDetailsModel(
        images: [
          'https://t4.ftcdn.net/jpg/12/29/54/53/240_F_1229545365_2jbwNqIKWVu6WqCALD2h3ynEqdRJUYd5.jpg',
          'https://t3.ftcdn.net/jpg/05/39/60/90/240_F_539609028_vqdEYa7GROujPxhItIlLV2e7cEEUVFpT.jpg',
          'https://t4.ftcdn.net/jpg/14/14/83/47/240_F_1414834705_M0ZHbZiCUNzjthIxN4sOAg6Hb5eLUgNw.jpg',
        ],
        productName: 'Naturel Red Apple',
        productDescription:
            'An apple is a round, edible fruit produced by an apple tree (Malus spp.). Fruit trees of the orchard or domestic apple (Malus domestica), the most widely grown in the genus, are cultivated worldwide. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found. Apples have been grown. ',
        productQuantity: '1',
        productPrice: '200',
        productRating: '4.5',
        productKGprice: '1kg, priceG');
    update();
  }

  void onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  void increseProduct() {
    count++;
    update();
  }

  void decreseProduct() {
    count--;
    update();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
}
