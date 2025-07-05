import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:e_commarce_v2_flutter/controller/product_details_controller.dart';
import 'package:e_commarce_v2_flutter/data/models/product_details_model.dart';
import 'package:e_commarce_v2_flutter/views/productDetails/widget/product_details_slider_widget.dart';
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
        body: SingleChildScrollView(
          child: GetBuilder<ProductDetailsController>(
            builder: (controller) {
              final product = controller.productDetails;
              if (product == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Center(
                child: Column(
                  children: [
                    productdetails_slider_widget(
                        productDetailsController: _productDetailsController,
                        product: product),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(product.images.length, (index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width:
                                _productDetailsController.currentIndex == index
                                    ? 12
                                    : 8,
                            height:
                                _productDetailsController.currentIndex == index
                                    ? 12
                                    : 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _productDetailsController.currentIndex ==
                                        index
                                    ? Colors.black
                                    : Colors.grey),
                          );
                        }),
                      ),
                    ),
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
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                product.productKGprice,
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          IconButton(
                            onPressed:
                                _productDetailsController.toggleFavourite,
                            icon: Icon(Icons.favorite_border_rounded),
                            color: _productDetailsController.isFavourite
                                ? Colors.red
                                : Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    controller.increseProduct();
                                  },
                                  icon: Icon(Icons.add)),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    '${controller.count}',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    controller.decreseProduct();
                                  },
                                  icon: Icon(Icons.delete_forever_outlined)),
                            ],
                          ),
                          Text(
                            'BDT ${product.productPrice}',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(fontSize: 24),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 1,
                        width: double.infinity,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Product Details',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                          IconButton(
                              onPressed: controller.toggleDescription,
                              icon: Icon(
                                controller.isDescriptionExpended
                                    ? Icons.arrow_downward_outlined
                                    : Icons.arrow_upward_outlined,
                                color: controller.isDescriptionExpended
                                    ? AppColors.splashbackground
                                    : Colors.grey,
                              ))
                        ],
                      ),
                    ),
                    AnimatedSize(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: controller.isDescriptionExpended
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(product.productDescription),
                            )
                          : SizedBox.shrink(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 26),
                      child: SizedBox(
                        height: 1,
                        width: double.infinity,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nutrition',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey),
                                child: Center(
                                  child: Text(
                                    '100g',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined))
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 26),
                      child: SizedBox(
                        height: 1,
                        width: double.infinity,
                        child: Container(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Row(
                            children: [
                              Text(product.productRating),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_downward_outlined))
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Add to Cart')),
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
