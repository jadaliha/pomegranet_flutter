import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/ingrediant_item.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recommend_items.dart';

class IngredientsTab extends StatelessWidget {
  const IngredientsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.remove_circle_outline_rounded,
                      color: Color(0xFF22B4B4),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    '5 servers',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF637381),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Color(0xFF22B4B4),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'US',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF919EAB),
                      ),
                    ),
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: const Color(0xFF22B4B4),
                  ),
                  Text(
                    'Metric',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF637381),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Expanded(
            child: Column(
              children: [
                IngredientItem(name: 'Tomato', calories: '45 cal/300 gr'),
                IngredientItem(name: 'Minced meat', calories: '65 cal/410 gr'),
                IngredientItem(name: 'Mozzarella', calories: '40 cal/140 gr'),
                IngredientItem(name: 'Onion', calories: '8 cal/140 gr'),
                IngredientItem(name: 'Pepper', calories: '6 cal/110 gr'),
                IngredientItem(name: 'Mushroom', calories: '15 cal/140 gr'),
                IngredientItem(name: 'Lettuce', calories: '10 cal/100 gr'),
                IngredientItem(name: 'Bread', calories: '6 cal/110 gr'),
              ],
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('You might also like',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              RecommendedItems(),
            ],
          ),
        ],
      ),
    );
  }
}
