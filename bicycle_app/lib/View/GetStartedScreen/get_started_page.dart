import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreen/home_page.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(transform: GradientRotation(20), stops: [
                0.5,
                0.5
              ], colors: [
                Color.fromRGBO(34, 40, 52, 1),
                Color.fromRGBO(75, 76, 237, 1),
              ]),
            ),
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                textAlign: TextAlign.center,
                style: GoogleFonts.allertaStencil(
                    fontWeight: FontWeight.w500,
                    fontSize: 100,
                    color: const Color.fromRGBO(255, 255, 255, 0.2)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/cycleicon.png",
                      width: 77,
                      height: 50,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    "assets/cycle1.png",
                    height: 460,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 10, right: 10),
                    alignment: Alignment.centerRight,
                    height: 76,
                    width: 280,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(38),
                            bottomLeft: Radius.circular(38)),
                        color: Color.fromRGBO(36, 44, 59, 0.8),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-3, 4),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                          child: Container(
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
                                ]),
                            child: const Image(
                              image: AssetImage("assets/arrow.png"),
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Get Start",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
