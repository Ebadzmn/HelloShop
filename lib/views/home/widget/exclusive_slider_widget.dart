import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:e_commarce_v2_flutter/controller/exclusive_slider_controlle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExclusiveSlider_widget extends StatelessWidget {
  const ExclusiveSlider_widget({
    super.key,
    required this.exclusiveSliderController,
  });

  final ExclusiveSliderControlle exclusiveSliderController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 248,
        child: Obx(() {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: exclusiveSliderController.sliderItem.length,
              itemBuilder: (context, index) {
                final ExclusiveSlider =
                    exclusiveSliderController.sliderItem[index];
                return GestureDetector(
                  onTap: () {},
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 173,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.network(
                                ExclusiveSlider.image,
                                width: 110,
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              ExclusiveSlider.productName,
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            Text(ExclusiveSlider.productDetails),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${ExclusiveSlider.productPrice} BDT',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: AppColors.splashbackground),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}
