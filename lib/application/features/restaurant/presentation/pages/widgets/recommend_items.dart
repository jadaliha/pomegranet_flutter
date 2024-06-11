import 'package:flutter/material.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/food.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/recommend_item.dart';

class RecommendedItems extends StatelessWidget {
  const RecommendedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        itemCount: Food.mockData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return RecommendedItem(food: Food.mockData[index]);
        },
      ),
    );
  }
}
