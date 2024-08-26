import 'package:bicycle_app/View/DetailScreen/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// FEATURED BICYCLE WIDGET
class FeaturedBicycle extends StatelessWidget {
  const FeaturedBicycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 100,
        // ),
        Container(
          height: 240,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 8, bottom: 2, right: 9, left: 3),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: Color.fromRGBO(0, 0, 0, 0.5),
                offset: Offset(4, 7),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(53, 63, 84, 0.6),
              Color.fromRGBO(34, 40, 52, 0.6),
            ]),
          ),
          child: Row(
            children: [
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const DetailScreen();
                    }),
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (1).png",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "EXTREME",
                      style: GoogleFonts.allertaStencil(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Spacer(),
                  Expanded(
                    child: Text(
                      "30% OFF",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
