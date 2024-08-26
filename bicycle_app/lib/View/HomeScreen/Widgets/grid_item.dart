import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// GRID ITEM WIDGET
class GridItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
  const GridItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            strokeAlign: BorderSide.strokeAlignInside,
            color: const Color.fromRGBO(255, 255, 255, 0.2)),
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(53, 63, 84, 0.6),
          Color.fromRGBO(34, 40, 52, 0.6),
        ]),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromRGBO(195, 195, 195, 1),
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: const Color.fromRGBO(195, 195, 195, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
