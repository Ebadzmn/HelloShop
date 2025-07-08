import 'package:e_commarce_v2_flutter/controller/category_controller.dart';
import 'package:e_commarce_v2_flutter/views/category/widget/cart_category_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const String name = '/productCategory';

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Category',
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
                  itemCount: categoryController.categoryList.length,
                  itemBuilder: (context, index) {
                    final category = categoryController.categoryList[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: card_category_widget(
                        images: '',
                        categoryName: category.categoryName,
                      ),
                    );
                  });
            }))
          ],
        ),
      ),
    );
  }
}
