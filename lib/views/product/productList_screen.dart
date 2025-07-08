import 'package:e_commarce_v2_flutter/controller/category_controller.dart';
import 'package:e_commarce_v2_flutter/controller/productList_byCategoryID.dart';
import 'package:e_commarce_v2_flutter/views/category/widget/cart_category_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductlistScreen extends StatelessWidget {
  final int categoryId;
  ProductlistScreen({
    super.key,
    required this.categoryId,
  });
  static const String name = '/productList';

  @override
  Widget build(BuildContext context) {
    final ProductlistBycategoryid productlistBycategoryid = Get.find();
    // Get the categoryId passed from the previous screen
    if (productlistBycategoryid.currentCategoryId != categoryId) {
      productlistBycategoryid.loadProductByCategoryId(categoryId);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'name',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: Obx(() {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: productlistBycategoryid.filterProduct.length,
                  itemBuilder: (context, index) {
                    final product =
                        productlistBycategoryid.filterProduct[index];
                    print('sss${product}');
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: cartItem(
                            images: product.images,
                            name: product.name,
                            subdescription: product.subdescription,
                            price: product.price,
                            onAdd: () {}));
                  });
            }))
          ],
        ),
      ),
    );
  }
}
