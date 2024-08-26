import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:bicycle_app/Model/BicycleModel.dart';

/// CART ITEM WIDGET
class CartItem extends StatelessWidget {
  final int index;

  const CartItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 17),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 30),
            child: Row(
              children: [
                Container(
                  height: 108,
                  width: 130,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(53, 63, 84, 0.6),
                        Color.fromRGBO(34, 40, 52, 0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 2,
                      color: const Color.fromRGBO(255, 255, 255, 0.1),
                    ),
                  ),
                  child: Image.asset(
                    Provider.of<BicycleModel>(context).cardList[index][0],
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 17),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Provider.of<BicycleModel>(context).cardList[index][1],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Provider.of<BicycleModel>(context).cardList[index][2],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color.fromRGBO(55, 182, 233, 1),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(30, 30, 30, 0.8),
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 1,
                                  offset: Offset(0, 1),
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(55, 182, 233, 1),
                                          Color.fromRGBO(75, 76, 237, 1),
                                        ],
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  "1",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    padding: const EdgeInsets.only(bottom: 2, right: 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(255, 255, 255, 0.8),
                                          Color.fromRGBO(195, 195, 195, 0.2),
                                        ],
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Color.fromRGBO(255, 255, 255, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 17),
          const Divider(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
