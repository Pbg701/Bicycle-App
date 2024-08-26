import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// CHECKOUT BUTTON WIDGET
class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(55, 182, 233, 1),
                  Color.fromRGBO(72, 92, 236, 1),
                ],
              ),
            ),
            child: const Image(
              image: AssetImage("assets/arrow.png"),
              fit: BoxFit.fill,
              height: 21,
              width: 21,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "Check Out",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ],
    );
  }
}
