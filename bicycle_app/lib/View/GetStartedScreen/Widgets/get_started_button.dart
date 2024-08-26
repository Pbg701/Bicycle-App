import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GetStartedButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
        alignment: Alignment.centerRight,
        height: 76,
        width: 280,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38),
            bottomLeft: Radius.circular(38),
          ),
          color: Color.fromRGBO(36, 44, 59, 0.8),
          boxShadow: [
            BoxShadow(
              offset: Offset(-3, 4),
              blurRadius: 4,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(75, 76, 237, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromRGBO(239, 186, 51, 1),
                    spreadRadius: 3,
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: const Image(
                image: AssetImage("assets/arrow.png"),
                height: 30,
                width: 30,
              ),
            ),
            const Spacer(),
            Text(
              "Get Start",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 25,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
