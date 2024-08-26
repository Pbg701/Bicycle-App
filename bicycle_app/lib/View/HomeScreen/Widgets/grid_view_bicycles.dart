import 'package:bicycle_app/Model/BicycleModel.dart';
import 'package:bicycle_app/View/DetailScreen/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// GRID VIEW BICYCLES WIDGET
class GridViewBicycles extends StatelessWidget {
  const GridViewBicycles({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 17,
            crossAxisSpacing: 17,
            childAspectRatio: 3 / 4.7),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.read<BicycleModel>().selectBicycle(index);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailScreen();
              }));
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                    strokeAlign: BorderSide.strokeAlignInside,
                    color: const Color.fromRGBO(255, 255, 255, 0.2)),
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(53, 63, 84, 0.6),
                  Color.fromRGBO(34, 40, 52, 0.6),
                ]),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Provider.of<BicycleModel>(context).cycleList[index][3],
                      ),
                      Text(
                        Provider.of<BicycleModel>(context).cycleList[index][0],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color.fromRGBO(195, 195, 195, 1),
                        ),
                      ),
                      Text(
                        Provider.of<BicycleModel>(context).cycleList[index][1],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        Provider.of<BicycleModel>(context).cycleList[index][2],
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color.fromRGBO(195, 195, 195, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
