import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// DETAILS SECTION WIDGET
class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 15, right: 23),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        border: Border(
          top: BorderSide(
            width: 2,
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
          left: BorderSide(
            width: 2,
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
          right: BorderSide(
            width: 2,
            color: Color.fromRGBO(255, 255, 255, 0.2),
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(53, 63, 84, 0.8),
            Color.fromRGBO(34, 40, 52, 0.8),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                    color: const Color.fromRGBO(36, 44, 59, 1),
                  ),
                  child: Text(
                    "Description",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                    color: const Color.fromRGBO(72, 92, 236, 1),
                  ),
                  child: Text(
                    "Specification",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text(
              "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
