import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewRateItem extends StatelessWidget {
  const ReviewRateItem({
    super.key,
    required this.star,
    required this.progress,
    required this.reviewsCount,
  });
  final int star;
  final double progress;
  final int reviewsCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 5,
            children: [
              Text(
                '$star',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
              Text(
                'Star',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: LinearProgressIndicator(
                color: const Color(0xFF22B4B4),
                value: progress,
                backgroundColor: const Color(0xFF919EAB).withOpacity(0.24),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Text(
            '$reviewsCount',
            style: GoogleFonts.publicSans(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF637381),
              ),
            ),
          )
        ],
      ),
    );
  }
}
