// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:provider/provider.dart';
// // import "../Model/BicycleModel.dart";
// // import 'cart_page.dart';

// // class DetailScreen extends StatefulWidget {
// //   const DetailScreen({super.key});

// //   @override
// //   State<DetailScreen> createState() => _DetailScreenState();
// // }

// // class _DetailScreenState extends State<DetailScreen> {
// //   List<dynamic> itemImage = [
// //     "assets/1 (1).png",
// //     "assets/2.png",
// //     "assets/3.png",
// //   ];

// //   int currentPageindex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomNavigationBar: Container(
// //         width: double.infinity,
// //         height: 90,
// //         padding: const EdgeInsets.only(left: 20, right: 20),
// //         decoration: const BoxDecoration(
// //             color: Color.fromRGBO(36, 44, 59, 1),
// //             boxShadow: [
// //               BoxShadow(
// //                   color: Color.fromRGBO(0, 0, 0, 0.4),
// //                   blurRadius: 20,
// //                   offset: Offset(0, -8)),
// //             ]),
// //         child: Row(
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: [
// //             Text(
// //               Provider.of<BicycleModel>(context).selectedBicyclePrice,
// //               // Provider.of<BicycleModel>(context).cycleList[index][2],
// //               //"\$2,599.99",
// //               style: GoogleFonts.poppins(
// //                 fontWeight: FontWeight.w500,
// //                 fontSize: 24,
// //                 color: const Color.fromRGBO(255, 255, 255, 1),
// //               ),
// //             ),
// //             const Spacer(),
// //             GestureDetector(
// //               onTap: () {
// //                 Navigator.push(context, MaterialPageRoute(builder: (context) {
// //                   return const CartScreen();
// //                 }));
// //               },
// //               child: Container(
// //                 alignment: Alignment.center,
// //                 height: 50,
// //                 width: 180,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(20),
// //                   gradient: const LinearGradient(
// //                     colors: [
// //                       Color.fromRGBO(55, 182, 233, 1),
// //                       Color.fromRGBO(75, 76, 237, 1)
// //                     ],
// //                   ),
// //                   border: Border.all(
// //                     width: 1,
// //                     color: const Color.fromRGBO(255, 251, 251, 0.5),
// //                   ),
// //                 ),
// //                 child: Text(
// //                   "Buy Now",
// //                   style: GoogleFonts.poppins(
// //                     fontWeight: FontWeight.w500,
// //                     fontSize: 25,
// //                     color: const Color.fromRGBO(255, 255, 255, 1),
// //                   ),
// //                 ),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //       body: Stack(
// //         children: [
// //           Container(
// //             height: double.infinity,
// //             width: double.infinity,
// //             decoration: const BoxDecoration(
// //               gradient: LinearGradient(transform: GradientRotation(20), stops: [
// //                 0.6,
// //                 0.4
// //               ], colors: [
// //                 Color.fromRGBO(34, 40, 52, 1),
// //                 Color.fromRGBO(75, 76, 237, 1),
// //               ]),
// //             ),
// //             child: RotatedBox(
// //               quarterTurns: 1,
// //               child: Text(
// //                 "EXTREME",
// //                 textAlign: TextAlign.center,
// //                 style: GoogleFonts.allertaStencil(
// //                     fontWeight: FontWeight.w500,
// //                     fontSize: 140,
// //                     color: const Color.fromRGBO(255, 255, 255, 0.1)),
// //               ),
// //             ),
// //           ),
// //           Column(
// //             children: [
// //               const SizedBox(
// //                 height: 40,
// //               ),
// //               Container(
// //                 padding: const EdgeInsets.only(left: 20, right: 20),
// //                 child: Row(
// //                   children: [
// //                     Expanded(
// //                       child: Text(
// //                         Provider.of<BicycleModel>(context).selectedBicycle,

// //                         //bicycle[0],
// //                         //"GT BIKE",
// //                         style: GoogleFonts.poppins(
// //                           fontWeight: FontWeight.w500,
// //                           fontSize: 30,
// //                           color: const Color.fromRGBO(255, 255, 255, 1),
// //                         ),
// //                       ),
// //                     ),
// //                     const SizedBox(
// //                       width: 20,
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         Navigator.pop(context);
// //                       },
// //                       child: Container(
// //                         height: 50,
// //                         width: 50,
// //                         padding: const EdgeInsets.all(10),
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(10),
// //                           gradient: const LinearGradient(colors: [
// //                             Color.fromRGBO(55, 182, 233, 1),
// //                             Color.fromRGBO(72, 92, 236, 1),
// //                             Color.fromRGBO(75, 76, 237, 1)
// //                           ]),
// //                         ),
// //                         child: const Image(
// //                           image: AssetImage(
// //                             "assets/back (2).png",
// //                           ),
// //                           height: 30,
// //                           width: 30,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               CarouselSlider(
// //                 items: itemImage.map((imageItem) {
// //                   return SizedBox(
// //                       height: 380,
// //                       width: double.infinity,
// //                       child: Image.asset(
// //                         imageItem,
// //                         width: double.infinity,
// //                         fit: BoxFit.fill,
// //                       ));
// //                 }).toList(),
// //                 options: CarouselOptions(
// //                   onPageChanged: (index, reason) {
// //                     setState(() {
// //                       currentPageindex = index;
// //                     });
// //                   },
// //                   // autoPlay: true,
// //                   height: 370,
// //                 ),
// //               ),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   for (int i = 0; i < itemImage.length; i++)
// //                     Container(
// //                       margin: const EdgeInsets.all(2),
// //                       height: 10,
// //                       width: 10,
// //                       decoration: BoxDecoration(
// //                         shape: BoxShape.circle,
// //                         color: currentPageindex == i
// //                             ? const Color.fromRGBO(0, 0, 0, 1)
// //                             : const Color.fromRGBO(255, 255, 255, 1),
// //                       ),
// //                     ),
// //                 ],
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               Expanded(
// //                 child: Container(
// //                   padding: const EdgeInsets.only(left: 25, top: 15, right: 23),
// //                   width: double.infinity,
// //                   decoration: const BoxDecoration(
// //                     borderRadius: BorderRadius.only(
// //                         topLeft: Radius.circular(20),
// //                         topRight: Radius.circular(20)),
// //                     border: Border(
// //                       top: BorderSide(
// //                         width: 2,
// //                         color: Color.fromRGBO(255, 255, 255, 0.2),
// //                       ),
// //                       left: BorderSide(
// //                         width: 2,
// //                         color: Color.fromRGBO(255, 255, 255, 0.2),
// //                       ),
// //                       right: BorderSide(
// //                         width: 2,
// //                         color: Color.fromRGBO(255, 255, 255, 0.2),
// //                       ),
// //                     ),
// //                     gradient: LinearGradient(
// //                       colors: [
// //                         Color.fromRGBO(53, 63, 84, 0.8),
// //                         Color.fromRGBO(34, 40, 52, 0.8),
// //                       ],
// //                     ),
// //                   ),
// //                   child: SingleChildScrollView(
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.start,
// //                       children: [
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           children: [
// //                             Container(
// //                               alignment: Alignment.center,
// //                               padding:
// //                                   const EdgeInsets.only(left: 10, right: 10),
// //                               height: 35,
// //                               // width: 105,
// //                               decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(20),
// //                                   border: Border.all(
// //                                       width: 1,
// //                                       color: const Color.fromRGBO(
// //                                           255, 255, 255, 0.5)),
// //                                   color: const Color.fromRGBO(36, 44, 59, 1)),
// //                               child: Text(
// //                                 "Description",
// //                                 style: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.w500,
// //                                   fontSize: 15,
// //                                   color: const Color.fromRGBO(255, 255, 255, 1),
// //                                 ),
// //                               ),
// //                             ),
// //                             Container(
// //                               height: 35,
// //                               alignment: Alignment.center,
// //                               padding:
// //                                   const EdgeInsets.only(left: 10, right: 10),
// //                               // width: 105,
// //                               decoration: BoxDecoration(
// //                                   borderRadius: BorderRadius.circular(20),
// //                                   border: Border.all(
// //                                       width: 1,
// //                                       color: const Color.fromRGBO(
// //                                           255, 255, 255, 0.5)),
// //                                   color: const Color.fromRGBO(72, 92, 236, 1)),
// //                               child: Text(
// //                                 "Specification",
// //                                 style: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.w500,
// //                                   fontSize: 15,
// //                                   color: const Color.fromRGBO(255, 255, 255, 1),
// //                                 ),
// //                               ),
// //                             )
// //                           ],
// //                         ),
// //                         const SizedBox(
// //                           height: 35,
// //                         ),
// //                         Text(
// //                           "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
// //                           style: GoogleFonts.poppins(
// //                             fontWeight: FontWeight.w500,
// //                             fontSize: 14,
// //                             color: const Color.fromRGBO(255, 255, 255, 1),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:provider/provider.dart';
// import "../../Model/BicycleModel.dart";
// import '../cart_page.dart';

// // DETAILSCREEN CLASS DEFINITION
// class DetailScreen extends StatefulWidget {
//   const DetailScreen({super.key});

//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }

// // DETAILSCREEN STATE CLASS DEFINITION
// class _DetailScreenState extends State<DetailScreen> {
//   // LIST OF IMAGE ASSETS FOR CAROUSEL
//   List<dynamic> itemImage = [
//     "assets/1 (1).png",
//     "assets/2.png",
//     "assets/3.png",
//   ];

//   // CURRENT PAGE INDEX FOR CAROUSEL INDICATORS
//   int currentPageindex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // BOTTOM NAVIGATION BAR CONTAINER
//       bottomNavigationBar: Container(
//         width: double.infinity,
//         height: 90,
//         padding: const EdgeInsets.only(left: 20, right: 20),
//         decoration: const BoxDecoration(
//             color: Color.fromRGBO(36, 44, 59, 1),
//             boxShadow: [
//               BoxShadow(
//                   color: Color.fromRGBO(0, 0, 0, 0.4),
//                   blurRadius: 20,
//                   offset: Offset(0, -8)),
//             ]),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // PRICE TEXT DISPLAY
//             Text(
//               Provider.of<BicycleModel>(context).selectedBicyclePrice,
//               // PROVIDER TO GET SELECTED BICYCLE PRICE
//               style: GoogleFonts.poppins(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 24,
//                 color: const Color.fromRGBO(255, 255, 255, 1),
//               ),
//             ),
//             const Spacer(),
//             // BUY NOW BUTTON
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const CartScreen();
//                 }));
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 height: 50,
//                 width: 180,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: const LinearGradient(
//                     colors: [
//                       Color.fromRGBO(55, 182, 233, 1),
//                       Color.fromRGBO(75, 76, 237, 1)
//                     ],
//                   ),
//                   border: Border.all(
//                     width: 1,
//                     color: const Color.fromRGBO(255, 251, 251, 0.5),
//                   ),
//                 ),
//                 child: Text(
//                   "Buy Now",
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 25,
//                     color: const Color.fromRGBO(255, 255, 255, 1),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       // BODY OF DETAILSCREEN
//       body: Stack(
//         children: [
//           // BACKGROUND CONTAINER WITH GRADIENT
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 transform: GradientRotation(20),
//                 stops: [0.6, 0.4],
//                 colors: [
//                   Color.fromRGBO(34, 40, 52, 1),
//                   Color.fromRGBO(75, 76, 237, 1),
//                 ],
//               ),
//             ),
//             child: RotatedBox(
//               quarterTurns: 1,
//               child: Text(
//                 "EXTREME",
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.allertaStencil(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 140,
//                     color: const Color.fromRGBO(255, 255, 255, 0.1)),
//               ),
//             ),
//           ),
//           // COLUMN CONTAINING CONTENT
//           Column(
//             children: [
//               const SizedBox(height: 40),
//               // HEADER CONTAINER WITH TITLE AND BACK BUTTON
//               Container(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Text(
//                         Provider.of<BicycleModel>(context).selectedBicycle,
//                         // PROVIDER TO GET SELECTED BICYCLE NAME
//                         style: GoogleFonts.poppins(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 30,
//                           color: const Color.fromRGBO(255, 255, 255, 1),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 20),
//                     // BACK BUTTON
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         height: 50,
//                         width: 50,
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           gradient: const LinearGradient(colors: [
//                             Color.fromRGBO(55, 182, 233, 1),
//                             Color.fromRGBO(72, 92, 236, 1),
//                             Color.fromRGBO(75, 76, 237, 1)
//                           ]),
//                         ),
//                         child: const Image(
//                           image: AssetImage(
//                             "assets/back (2).png",
//                           ),
//                           height: 30,
//                           width: 30,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // CAROUSEL SLIDER FOR IMAGES
//               CarouselSlider(
//                 items: itemImage.map((imageItem) {
//                   return SizedBox(
//                       height: 380,
//                       width: double.infinity,
//                       child: Image.asset(
//                         imageItem,
//                         width: double.infinity,
//                         fit: BoxFit.fill,
//                       ));
//                 }).toList(),
//                 options: CarouselOptions(
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       currentPageindex = index;
//                     });
//                   },
//                   height: 370,
//                 ),
//               ),
//               // CAROUSEL INDICATORS
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   for (int i = 0; i < itemImage.length; i++)
//                     Container(
//                       margin: const EdgeInsets.all(2),
//                       height: 10,
//                       width: 10,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: currentPageindex == i
//                             ? const Color.fromRGBO(0, 0, 0, 1)
//                             : const Color.fromRGBO(255, 255, 255, 1),
//                       ),
//                     ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               // DETAILS CONTAINER
//               Expanded(
//                 child: Container(
//                   padding: const EdgeInsets.only(left: 25, top: 15, right: 23),
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20)),
//                     border: Border(
//                       top: BorderSide(
//                         width: 2,
//                         color: Color.fromRGBO(255, 255, 255, 0.2),
//                       ),
//                       left: BorderSide(
//                         width: 2,
//                         color: Color.fromRGBO(255, 255, 255, 0.2),
//                       ),
//                       right: BorderSide(
//                         width: 2,
//                         color: Color.fromRGBO(255, 255, 255, 0.2),
//                       ),
//                     ),
//                     gradient: LinearGradient(
//                       colors: [
//                         Color.fromRGBO(53, 63, 84, 0.8),
//                         Color.fromRGBO(34, 40, 52, 0.8),
//                       ],
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         // DESCRIPTION AND SPECIFICATION BUTTONS
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               alignment: Alignment.center,
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               height: 35,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(
//                                       width: 1,
//                                       color: const Color.fromRGBO(
//                                           255, 255, 255, 0.5)),
//                                   color: const Color.fromRGBO(36, 44, 59, 1)),
//                               child: Text(
//                                 "Description",
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 15,
//                                   color: const Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               height: 35,
//                               alignment: Alignment.center,
//                               padding:
//                                   const EdgeInsets.only(left: 10, right: 10),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   border: Border.all(
//                                       width: 1,
//                                       color: const Color.fromRGBO(
//                                           255, 255, 255, 0.5)),
//                                   color: const Color.fromRGBO(72, 92, 236, 1)),
//                               child: Text(
//                                 "Specification",
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 15,
//                                   color: const Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                         const SizedBox(height: 35),
//                         // DESCRIPTION TEXT
//                         Text(
//                           "Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: const Color.fromRGBO(255, 255, 255, 1),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:bicycle_app/View/DetailScreen/Widgets/bottom_nav_bar.dart';
import 'package:bicycle_app/View/DetailScreen/Widgets/carousel_with_indicators.dart';
import 'package:bicycle_app/View/DetailScreen/Widgets/header_with_back_button.dart';
import 'package:flutter/material.dart';

import 'Widgets/carousel_images.dart';
import 'Widgets/details_section.dart';
import 'widgets/background_gradient.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<dynamic> itemImage = [
    "assets/1 (1).png",
    "assets/2.png",
    "assets/3.png",
  ];

  int currentPageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          const BackgroundGradient(),
          Column(
            children: [
              const SizedBox(height: 40),
              const HeaderWithBackButton(),
              const SizedBox(height: 20),
              CarouselImages(
                itemImages: itemImage,
                onPageChanged: (index) {
                  setState(() {
                    currentPageindex = index;
                  });
                },
              ),
              CarouselIndicators(
                itemCount: itemImage.length,
                currentIndex: currentPageindex,
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: DetailsSection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
