import 'package:bicycle_app/Model/BicycleModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// BOTTOM NAVIGATION BAR WIDGET
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //final bicycleModel = Provider.of<BicycleModel>(context);
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 50,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 19),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(36, 44, 59, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 15, left: 10, right: 10, top: 10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 76, 167, 247),
                  Color.fromRGBO(75, 76, 237, 1),
                ], stops: [
                  0.0,
                  1.0
                ]),
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                ),
              ),
              height: double.infinity,
              width: 50,
              child: Image.asset(
                Provider.of<BicycleModel>(context).bottomNavigationBarList[0],
                height: 40,
                width: 40,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 15, left: 10, right: 10, top: 10),
              height: double.infinity,
              width: 50,
              child: Image.asset(
                Provider.of<BicycleModel>(context).bottomNavigationBarList[1],
                height: 40,
                width: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 15, left: 10, right: 10, top: 10),
              height: double.infinity,
              width: 50,
              child: Image.asset(
                Provider.of<BicycleModel>(context).bottomNavigationBarList[2],
                height: 40,
                width: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 15, left: 10, right: 10, top: 10),
              height: double.infinity,
              width: 50,
              child: Image.asset(
                Provider.of<BicycleModel>(context).bottomNavigationBarList[3],
                height: 40,
                width: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
