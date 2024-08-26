// // ignore_for_file: file_names

// import 'package:flutter/material.dart';

// class BicycleModel with ChangeNotifier {
//   String _selectedBottomNavigationBar = '';
//   String _selectedBicycle = '';
//   String _selectedBicyclePrice = '';
//   String _selectedcard = '';

//   final List<List<String>> _cycleList = const [
//     ["Road Bike", "Kiross", "\$1599.99", "assets/1 (1).png"],
//     ["Road Bike", "GT Bike", "\$2599.99", "assets/2.png"],
//     ["Road Bike", "GT Bike", "\$1599.99", "assets/3.png"],
//     ["Road Bike", "Kiross", "\$3599.99", "assets/pngwing (1).png"],
//   ];
//   final List<String> _bottomNavigationBarList = const [
//     "assets/1 (2).png",
//     "assets/2 (1).png",
//     "assets/3 (1).png",
//     "assets/4 (1).png",
//   ];

//   final List<List<String>> _cardList = const [
//     ["assets/1 (1).png", "Kiross", "\$2599.99"],
//     ["assets/image 3.png", "GT Bike", "\$125.99"],
//     ["assets/image 6.png", "GT Bike", "\$115.99"],
//     ["assets/pngwing (1).png", "Kiross", "\$3599.99"],
//   ];

//   String get selectedBottomNavigationBar => _selectedBottomNavigationBar;
//   String get selectedBicycle => _selectedBicycle;
//   String get selectedBicyclePrice => _selectedBicyclePrice;
//   String get selectedcard => _selectedcard;

//   List<List<String>> get cycleList => _cycleList;
//   List<String> get bottomNavigationBarList => _bottomNavigationBarList;
//   List<List<String>> get cardList => _cardList;

//   void selectBicycle(int index) {
//     _selectedBicycle = _cycleList[index][1]; // Select the bicycle by name
//     _selectedBicyclePrice = _cycleList[index][2]; // Select the bicycle's price
//     notifyListeners();
//   }

//   void selectBottomNavigationBar(int index) {
//     _selectedBottomNavigationBar = _bottomNavigationBarList[index];
//     notifyListeners();
//   }

//   void selectcard(int index) {
//     _selectedcard = _cardList[index][0];
//     notifyListeners();
//   }
// }

// IGNORE_FOR_FILE: FILE_NAMES

// ignore_for_file: unused_field

import 'package:flutter/material.dart';

// BICYCLEMODEL CLASS FOR MANAGING BICYCLE DATA AND STATE
class BicycleModel with ChangeNotifier {
  // PRIVATE VARIABLES FOR SELECTED ITEMS
  String _selectedBottomNavigationBar = '';
  String _selectedBicycle = '';
  String _selectedBicyclePrice = '';
  String _selectedcard = '';

  // LIST OF BICYCLES WITH THEIR DETAILS
  final List<List<String>> _cycleList = const [
    ["Road Bike", "Kiross", "\$1599.99", "assets/2.png"],
    ["Road Bike", "GT Bike", "\$2599.99", "assets/3.png"],
    ["Road Bike", "GT Bike", "\$1599.99", "assets/pngwing (2).png"],
    ["Road Bike", "Kiross", "\$3599.99", "assets/pngwing (1).png"],
  ];

  // LIST OF IMAGES FOR BOTTOM NAVIGATION BAR
  final List<String> _bottomNavigationBarList = const [
    "assets/1 (2).png",
    "assets/2 (1).png",
    "assets/3 (1).png",
    "assets/4 (1).png",
  ];

  // LIST OF CARDS WITH THEIR DETAILS
  final List<List<String>> _cardList = const [
    ["assets/1 (1).png", "Kiross", "\$2599.99"],
    ["assets/image 3.png", "Helmet", "\$125.99"],
    ["assets/image 6.png", "Bottle", "\$115.99"],
    ["assets/2.png", "GT Bikes", "\$3599.99"],
  ];

  // GETTER FOR SELECTED BOTTOM NAVIGATION BAR ITEM
  //String get selectedBottomNavigationBar => _selectedBottomNavigationBar;

  // GETTER FOR SELECTED BICYCLE NAME
  String get selectedBicycle => _selectedBicycle;

  // GETTER FOR SELECTED BICYCLE PRICE
  String get selectedBicyclePrice => _selectedBicyclePrice;

  // GETTER FOR SELECTED CARD IMAGE
  //String get selectedcard => _selectedcard;

  // GETTER FOR LIST OF BICYCLES
  List<List<String>> get cycleList => _cycleList;

  // GETTER FOR LIST OF BOTTOM NAVIGATION BAR IMAGES
  List<String> get bottomNavigationBarList => _bottomNavigationBarList;

  // GETTER FOR LIST OF CARDS
  List<List<String>> get cardList => _cardList;

  // METHOD TO SELECT A BICYCLE BY INDEX
  void selectBicycle(int index) {
    _selectedBicycle = _cycleList[index][1]; // SELECT THE BICYCLE BY NAME
    _selectedBicyclePrice = _cycleList[index][2]; // SELECT THE BICYCLE'S PRICE
    notifyListeners(); // NOTIFY LISTENERS OF STATE CHANGE
  }

  // METHOD TO SELECT A BOTTOM NAVIGATION BAR IMAGE BY INDEX
  void selectBottomNavigationBar(int index) {
    _selectedBottomNavigationBar = _bottomNavigationBarList[index];
    notifyListeners(); // NOTIFY LISTENERS OF STATE CHANGE
  }

  // METHOD TO SELECT A CARD IMAGE BY INDEX
  void selectcard(int index) {
    _selectedcard = _cardList[index][0];
    notifyListeners(); // NOTIFY LISTENERS OF STATE CHANGE
  }
}
