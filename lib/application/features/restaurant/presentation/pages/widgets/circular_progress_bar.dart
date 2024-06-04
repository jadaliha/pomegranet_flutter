import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularProgressBar extends StatelessWidget {
  const CircularProgressBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
  });
  final String title;
  final String subtitle;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: CircularProgressIndicator(
            value: value,
            color: const Color(0xFF22B4B4),
            backgroundColor: const Color(0xFF919EAB).withOpacity(0.24),
            strokeWidth: 3,
            strokeCap: StrokeCap.round,
          ),
        ),
        Column(
          children: [
            Text(
              title,
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  color: Color(0xFF212B36),
                ),
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF637381),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
