import 'package:e_commarce_v2_flutter/config/app_colors.dart';
import 'package:e_commarce_v2_flutter/config/assets_path.dart';
import 'package:e_commarce_v2_flutter/controller/exclusive_slider_controlle.dart';
import 'package:e_commarce_v2_flutter/controller/groceries_controller.dart';
import 'package:e_commarce_v2_flutter/controller/slider_controller.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/card_top_name_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/custom_navbar_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/exclusive_slider_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/grocerise_slider_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/search_widget.dart';
import 'package:e_commarce_v2_flutter/views/home/widget/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String name = '/home';

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ExclusiveSliderControlle exclusiveSliderController =
        ExclusiveSliderControlle();
    final GroceriesController groceriesController = GroceriesController();
    final SliderController sliderController = SliderController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(AssetsPath.logo2),
              Text(
                'nectar',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const Search_widget(),
              Slider_widget(sliderController: sliderController),
              const Card_top_name_widget(
                title: 'Exclusive Offer',
              ),
              ExclusiveSlider_widget(
                  exclusiveSliderController: exclusiveSliderController),
              const Card_top_name_widget(
                title: 'Best Selling',
              ),
              ExclusiveSlider_widget(
                  exclusiveSliderController: exclusiveSliderController),
              const Card_top_name_widget(
                title: 'Groceries',
              ),
              Grocerise_slider_widget(groceriesController: groceriesController),
              SizedBox(
                height: 8,
              ),
              ExclusiveSlider_widget(
                  exclusiveSliderController: exclusiveSliderController),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavbarWidget(),
    );
  }
}
