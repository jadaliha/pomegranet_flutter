import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagItem extends StatelessWidget {
  const TagItem({
    super.key,
    required this.title,
    required this.callback,
  });
  final String title;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xFF22B4B4),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.rubik(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF22B4B4),
            ),
          ),
        ),
      ),
    );
  }
}
