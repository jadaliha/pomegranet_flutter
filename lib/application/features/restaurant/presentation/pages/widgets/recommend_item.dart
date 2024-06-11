import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/food.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({
    super.key,
    required this.food,
  });
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              food.image,
              width: MediaQuery.of(context).size.width / 2,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 150,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF919EAB).withOpacity(0.12),
                    spreadRadius: 0,
                    blurRadius: 13,
                    offset: const Offset(0, 0),
                  ),
                ]),
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
                              IconsAssets.star,
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
                          IconsAssets.time,
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
                          IconsAssets.calorie,
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
                          IconsAssets.shop,
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
                  IconsAssets.add,
                  color: const Color(0xFF212B36),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
