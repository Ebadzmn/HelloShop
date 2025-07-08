import 'package:e_commarce_v2_flutter/controller/exclusive_controllerv2.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/card_item_widget.dart';

import 'package:e_commarce_v2_flutter/views/productDetails/productDetails_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExclusiveSlider_widget extends StatelessWidget {
  const ExclusiveSlider_widget({
    super.key,
    required this.exclusiveControllerv2,
  });

  final ExclusiveControllerv2 exclusiveControllerv2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 248,
        child: Obx(() {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exclusiveControllerv2.filterProduct.length,
              itemBuilder: (context, index) {
                final product = exclusiveControllerv2.filterProduct[index];
                print(product);
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ProductdetailsScreen.name);
                  },
                  child: cartItem(
                    images: product.images,
                    name: product.name,
                    subdescription: product.subdescription,
                    price: product.price,
                    onAdd: () {
                      print('Add to Cart : ${product.name}');
                    },
                  ),
                );
              });
        }),
      ),
    );
  }
}
