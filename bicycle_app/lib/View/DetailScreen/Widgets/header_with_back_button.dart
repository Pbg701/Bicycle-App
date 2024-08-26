import 'package:bicycle_app/Model/BicycleModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


// HEADER WITH BACK BUTTON WIDGET
class HeaderWithBackButton extends StatelessWidget {
  const HeaderWithBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              Provider.of<BicycleModel>(context).selectedBicycle,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(55, 182, 233, 1),
                  Color.fromRGBO(72, 92, 236, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ]),
              ),
              child: const Image(
                image: AssetImage("assets/back (2).png"),
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
