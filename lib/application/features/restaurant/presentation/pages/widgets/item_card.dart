import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/food.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.food});
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            food.image,
            height: 245,
          ),
          Positioned(
            top: 180,
            child: Container(
              width: 180,
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 12,
              ),
              decoration: const BoxDecoration(
                color: Color(
                  0xFFFFFFFF,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF212B36),
                          ),
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 6,
                        children: [
                          Image.asset(
                            'assets/icons/star.png',
                            color: const Color(0xFF22B4B4),
                            height: 12,
                          ),
                          Text(
                            food.rate.toString(),
                            style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF919EAB),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    children: [
                      Image.asset(
                        'assets/icons/time.png',
                        color: const Color(0xFF22B4B4),
                        height: 12,
                      ),
                      Text(
                        '${food.cookTime} Mins',
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
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    children: [
                      Image.asset(
                        'assets/icons/calorie.png',
                        color: const Color(0xFF22B4B4),
                        height: 12,
                      ),
                      Text(
                        '${food.calorie} Kcal',
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
                  const SizedBox(
                    height: 5,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    children: [
                      Image.asset(
                        'assets/icons/shop.png',
                        color: const Color(0xFF22B4B4),
                        height: 12,
                      ),
                      Text(
                        food.restaurant,
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF919EAB),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: Container(
              height: 42,
              width: 42,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF919EAB).withOpacity(0.12),
                      spreadRadius: 0,
                      blurRadius: 13,
                      offset: const Offset(0, 0),
                    ),
                  ]),
              child: Image.asset(
                'assets/icons/add.png',
                color: const Color(0xFF212B36),
              ),
            ),
          )
        ],
      ),
    );
  }
}
