import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurant,
  });
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 247,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              restaurant.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              width: 247,
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
                        restaurant.name,
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
                            restaurant.rate.toString(),
                            style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF212B36),
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
                        IconsAssets.location,
                        color: const Color(0xFF22B4B4),
                        height: 12,
                      ),
                      Text(
                        '${restaurant.distance} Km',
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
                        restaurant.address,
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
              padding: const EdgeInsets.all(12),
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
                IconsAssets.like,
                color: const Color(0xFF212B36),
              ),
            ),
          )
        ],
      ),
    );
  }
}
