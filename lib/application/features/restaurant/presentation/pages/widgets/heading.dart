import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.title, required this.callback});
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.25,
                color: Color(0xFF212B36),
              ),
            ),
          ),
          InkWell(
            onTap: callback,
            child: Text(
              'View all',
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF22B4B4),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
