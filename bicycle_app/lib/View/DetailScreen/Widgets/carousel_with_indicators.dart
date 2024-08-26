import 'package:flutter/material.dart';

// CAROUSEL INDICATORS WIDGET
class CarouselIndicators extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const CarouselIndicators({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < itemCount; i++)
          Container(
            margin: const EdgeInsets.all(2),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == i
                  ? const Color.fromRGBO(0, 0, 0, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
      ],
    );
  }
}
