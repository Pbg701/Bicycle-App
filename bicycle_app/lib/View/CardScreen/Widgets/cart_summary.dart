import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// CART SUMMARY WIDGET
class CartSummary extends StatelessWidget {
  const CartSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                "\$2,841.99",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromRGBO(55, 182, 233, 1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery fee",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                "\$0",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromRGBO(55, 182, 233, 1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                "30%",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromRGBO(55, 182, 233, 1),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                "\$1,989.37",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: const Color.fromRGBO(55, 182, 233, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
