// import 'package:flutter/material.dart';

// import 'View/get_started_page.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: GetStartedScreen(),
//     );
//   }
// }
import 'package:bicycle_app/View/GetStartedScreen/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model/BicycleModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BicycleModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetStartedScreen(),
    );
  }
}
