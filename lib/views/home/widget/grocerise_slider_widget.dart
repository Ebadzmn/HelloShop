import 'package:e_commarce_v2_flutter/controller/groceries_controller.dart';
import 'package:e_commarce_v2_flutter/views/productDetails/productDetails_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Grocerise_slider_widget extends StatelessWidget {
  const Grocerise_slider_widget({
    super.key,
    required this.groceriesController,
  });

  Color hexToColor(String hex) {
    hex = hex.replaceAll('#', '');
    if (hex.length == 6) hex = 'FF$hex';
    return Color(int.parse('0x$hex'));
  }

  final GroceriesController groceriesController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 97,
        child: Obx(() {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groceriesController.groceriesList.length,
              itemBuilder: (context, index) {
                final GroceriseSlider =
                    groceriesController.groceriesList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ProductdetailsScreen.name);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 245,
                    decoration: BoxDecoration(
                        color: hexToColor(GroceriseSlider.color),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              GroceriseSlider.image,
                              width: 60,
                              height: 60,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            GroceriseSlider.Name,
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        }));
  }
}
