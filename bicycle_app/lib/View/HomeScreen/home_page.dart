

import 'package:bicycle_app/View/HomeScreen/Widgets/bottom_navigation_barwidget.dart';
import 'package:bicycle_app/View/HomeScreen/Widgets/featured_bicycle_widget.dart';
import 'package:bicycle_app/View/HomeScreen/Widgets/grid_view_bicycles.dart';


import 'package:flutter/material.dart';

import 'widgets/background_gradient.dart';

import 'widgets/header.dart';

// HOMESCREEN CLASS DEFINITION
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// _HOMESCREENSTATE CLASS DEFINITION
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: const BottomNavigationBarWidget(),
      // BODY OF HOMESCREEN
      body: Stack(
        children: [
          // BACKGROUND CONTAINER WITH GRADIENT
          const BackgroundGradient(),
          // CONTENT WITH PADDING
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              children: [
                // HEADER WITH TITLE AND SEARCH BUTTON
                const Header(),
                const SizedBox(
                  height: 20,
                ),
                // FEATURED BICYCLE CONTAINER
                const FeaturedBicycle(),
                const SizedBox(
                  height: 17,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      // FIRST ITEM IN GRID
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              strokeAlign: BorderSide.strokeAlignInside,
                              color: const Color.fromRGBO(255, 255, 255, 0.2),
                            ),
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(73, 84, 237, 1),
                              Color.fromRGBO(75, 76, 237, 1)
                            ]),
                          ),
                          child: const Image(
                            image: AssetImage(
                              "assets/item1.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      // SECOND ITEM IN GRID
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: const Color.fromRGBO(0, 0, 0, 0.2)),
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(161, 161, 161, 1),
                            ]),
                          ),
                          child: const Image(
                            image: AssetImage(
                              "assets/item2.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      // THIRD ITEM IN GRID
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: const Color.fromRGBO(0, 0, 0, 0.2)),
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(161, 161, 161, 1),
                            ]),
                          ),
                          child: const Image(
                            image: AssetImage(
                              "assets/item3.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      // FOURTH ITEM IN GRID
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                strokeAlign: BorderSide.strokeAlignInside,
                                color: const Color.fromRGBO(0, 0, 0, 0.2)),
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(161, 161, 161, 1),
                            ]),
                          ),
                          child: const Image(
                            image: AssetImage(
                              "assets/item4.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // GRID VIEW BUILDER FOR BICYCLE ITEMS
                const GridViewBicycles(), 
              ],
            ),
          )
        ],
      ),
    );
  }
}
