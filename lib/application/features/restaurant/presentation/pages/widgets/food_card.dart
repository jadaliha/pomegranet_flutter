import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 100,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 35,
            child: Container(
              width: 100,
              height: 75,
              decoration: const BoxDecoration(
                  color: Color(
                    0xFFFFFFFF,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF919EAB).withOpacity(0.12),
                    spreadRadius: 0,
                    blurRadius: 16,
                    offset: const Offset(0, 8),
                  ),
                ]),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.25,
                        color: Color(0xFF212B36),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            image,
            width: 75,
            height: 75,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
