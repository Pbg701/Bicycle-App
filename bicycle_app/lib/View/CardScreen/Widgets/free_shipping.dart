import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// FREE SHIPPING WIDGET
class FreeShipping extends StatelessWidget {
  const FreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Your Bag Qualifies for Free Shipping",
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w300,
        fontSize: 15,
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
    );
  }
}
