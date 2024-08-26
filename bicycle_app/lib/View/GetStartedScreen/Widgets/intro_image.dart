import 'package:flutter/material.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/cycle1.png",
          height: 460,
          width: 400,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
