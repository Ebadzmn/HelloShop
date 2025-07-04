import 'package:e_commarce_v2_flutter/controller/navbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavbarWidget extends StatelessWidget {
  CustomNavbarWidget({super.key});
  final BottomNavController _bottomNavController =
      Get.put(BottomNavController());

  final List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.card_travel_rounded, 'label': 'Cart'},
    {'icon': Icons.favorite, 'label': 'Favourite'},
    {'icon': Icons.account_box_outlined, 'label': 'Account'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 6, spreadRadius: 0.1)
          ],
        ),
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (index) {
                final item = items[index];
                final isSelected =
                    _bottomNavController.selectIndex.value == index;
                return GestureDetector(
                  onTap: () {
                    _bottomNavController.changeTab(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          item['icon'],
                          size: 24,
                          color: isSelected ? Colors.green : Colors.black,
                        ),
                        Text(
                          item['label'],
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: isSelected ? Colors.green : Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )),
      ),
    );
  }
}
