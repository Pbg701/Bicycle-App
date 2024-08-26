import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// BACKGROUND GRADIENT WIDGET
class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(transform: GradientRotation(20), stops: [
          0.6,
          0.4
        ], colors: [
          Color.fromRGBO(34, 40, 52, 1),
          Color.fromRGBO(75, 76, 237, 1),
        ]),
      ),
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          "EXTREME",
          textAlign: TextAlign.center,
          style: GoogleFonts.allertaStencil(
              fontWeight: FontWeight.w500,
              fontSize: 140,
              color: const Color.fromRGBO(255, 255, 255, 0.1)),
        ),
      ),
    );
  }
}
