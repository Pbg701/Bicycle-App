import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// HEADER WIDGET
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Choose Your Bicycle",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(55, 182, 233, 1),
              Color.fromRGBO(72, 92, 236, 1),
              Color.fromRGBO(75, 76, 237, 1)
            ]),
          ),
          child: const Image(
            image: AssetImage(
              "assets/search_home.png",
            ),
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
