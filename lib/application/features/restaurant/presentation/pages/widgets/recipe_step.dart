import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeStep extends StatelessWidget {
  const RecipeStep({
    super.key,
    required this.currentStep,
    required this.totalStep,
    required this.recipe,
  });
  final int currentStep;
  final int totalStep;
  final String recipe;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Step $currentStep / ',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
              Text(
                '$totalStep',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF919EAB),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              recipe,
              style: GoogleFonts.rubik(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF637381),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
