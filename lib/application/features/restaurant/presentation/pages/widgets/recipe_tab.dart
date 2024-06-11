import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recipe_step.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recommend_items.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/tag_item.dart';

class RecipeTab extends StatelessWidget {
  const RecipeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recipe Tags',
            style: GoogleFonts.rubik(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF212B36),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              TagItem(
                title: 'Quick',
                callback: () {},
              ),
              TagItem(
                title: 'Low fat',
                callback: () {},
              ),
              TagItem(
                title: 'Burger',
                callback: () {},
              ),
              TagItem(
                title: 'Grilling',
                callback: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Directions',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
              Text(
                '7 steps',
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
          const RecipeStep(
              currentStep: 1,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 2,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 3,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 4,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 5,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 6,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const RecipeStep(
              currentStep: 7,
              totalStep: 7,
              recipe:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco'),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Some recipes like this',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                RecommendedItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
