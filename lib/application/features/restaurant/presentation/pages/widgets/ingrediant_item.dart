import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientItem extends StatelessWidget {
  const IngredientItem({super.key, required this.name, required this.calories});

  final String name;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundImage: AssetImage(
            'assets/images/ingrediants/${name.toLowerCase().replaceAll(' ', '_')}.png'),
        backgroundColor: const Color(0xFF919EAB).withOpacity(0.12),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF637381),
              ),
            ),
          ),
          Text(
            calories,
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xFF637381),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
