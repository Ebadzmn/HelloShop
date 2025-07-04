import 'package:e_commarce_v2_flutter/controller/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Slider_widget extends StatelessWidget {
  const Slider_widget({
    super.key,
    required SliderController sliderController,
  }) : _sliderController = sliderController;

  final SliderController _sliderController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 120,
        child: Stack(
          children: [
            PageView.builder(
                controller: _sliderController.pageController,
                itemCount: _sliderController.slider.length,
                onPageChanged: (index) {
                  _sliderController.currentIndex.value = index;
                },
                itemBuilder: (context, index) {
                  return Obx(() {
                    final slider = _sliderController.slider[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          slider.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  });
                }),
            Positioned(
                top: 105,
                left: 0,
                right: 0,
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _sliderController.slider.length,
                        (index) => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 1),
                              width: 10,
                              height: 3,
                              decoration: BoxDecoration(
                                  shape: _sliderController.currentIndex.value ==
                                          index
                                      ? BoxShape.rectangle
                                      : BoxShape.circle,
                                  borderRadius:
                                      _sliderController.currentIndex.value ==
                                              index
                                          ? BorderRadius.circular(3)
                                          : null,
                                  color: _sliderController.currentIndex.value ==
                                          index
                                      ? Colors.amber
                                      : Colors.white),
                            )),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
