import 'package:bicycle_app/Model/BicycleModel.dart';
import 'package:bicycle_app/View/CardScreen/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


// BOTTOM NAV BAR WIDGET
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(36, 44, 59, 1),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            blurRadius: 20,
            offset: Offset(0, -8),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Provider.of<BicycleModel>(context).selectedBicyclePrice,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CartScreen();
              }));
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(55, 182, 233, 1),
                    Color.fromRGBO(75, 76, 237, 1),
                  ],
                ),
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(255, 251, 251, 0.5),
                ),
              ),
              child: Text(
                "Buy Now",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
