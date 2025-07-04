import 'package:e_commarce_v2_flutter/controller/product_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductdetailsScreen extends StatelessWidget {
  ProductdetailsScreen({super.key});
  static const String name = '/productDetails';
  // final ProductDetailsController _productDetailsController =
  //     ProductDetailsController();

  final ProductDetailsController _productDetailsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() {
          final product = _productDetailsController.productDetails.value;
          if (product == null) {
            print(product);
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: Column(
              children: [
                SizedBox(
                    height: 371,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F3F2),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30))),
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        onPageChanged: _productDetailsController.onPageChanged,
                        itemCount: product.images.length,
                        controller: _productDetailsController.pageController,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 80,
                                ),
                                Image.network(
                                  product.images[index],
                                  width: 328,
                                  height: 198,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )),
                Obx(() => Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(product.images.length, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width:
                                _productDetailsController.currentIndex.value ==
                                        index
                                    ? 12
                                    : 8,
                            height:
                                _productDetailsController.currentIndex.value ==
                                        index
                                    ? 12
                                    : 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _productDetailsController
                                            .currentIndex.value ==
                                        index
                                    ? Colors.black
                                    : Colors.grey),
                          );
                        }),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.productName,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            product.productKGprice,
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Obx(() => IconButton(
                            onPressed:
                                _productDetailsController.toggleFavourite,
                            icon: Icon(Icons.favorite_border_rounded),
                            color: _productDetailsController.isFavourite.value
                                ? Colors.red
                                : Colors.grey,
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
