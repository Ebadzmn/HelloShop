import 'package:e_commarce_v2_flutter/data/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  final pageController = PageController();
  var currentIndex = 0.obs;

  var slider = <SliderModel>[
    SliderModel(
        image:
            'https://img.lazcdn.com/us/domino/6339b2da-c86f-4e40-8156-ccbf3a8af3b0_BD-1976-688.jpg_2200x2200q80.jpg_.webp'),
    SliderModel(
        image:
            'https://img.lazcdn.com/us/domino/2f21a97e-e333-447a-9340-93f8188e5b12_BD-1976-688.jpg_2200x2200q80.jpg_.webp')
  ].obs;
}
