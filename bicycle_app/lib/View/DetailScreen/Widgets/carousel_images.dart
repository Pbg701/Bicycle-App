import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// CAROUSEL IMAGES WIDGET
class CarouselImages extends StatelessWidget {
  final List<dynamic> itemImages;
  final void Function(int) onPageChanged;

  const CarouselImages({
    super.key,
    required this.itemImages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: itemImages.map((imageItem) {
        return SizedBox(
          //height: 110,
          width: double.infinity,
          child: Image.asset(
            imageItem,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          onPageChanged(index);
        },
        height: 270,
      ),
    );
  }
}
