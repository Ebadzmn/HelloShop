import 'package:e_commarce_v2_flutter/controller/product_details_controller.dart';
import 'package:e_commarce_v2_flutter/data/models/product_details_model.dart';
import 'package:flutter/material.dart';

class productdetails_slider_widget extends StatelessWidget {
  const productdetails_slider_widget({
    super.key,
    required ProductDetailsController productDetailsController,
    required this.product,
  }) : _productDetailsController = productDetailsController;

  final ProductDetailsController _productDetailsController;
  final ProductDetailsModel? product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 371,
        width: double.infinity,
        child: Container(
          decoration: const BoxDecoration(
              color: Color(0xFFF2F3F2),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _productDetailsController.onPageChanged,
            itemCount: product?.images.length,
            controller: _productDetailsController.pageController,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Image.network(
                      product!.images[index],
                      width: 328,
                      height: 198,
                    )
                  ],
                ),
              );
            },
          ),
        ));
  }
}
