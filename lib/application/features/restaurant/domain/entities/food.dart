import 'package:equatable/equatable.dart';

class Food extends Equatable {
  const Food({
    required this.name,
    required this.rate,
    required this.cookTime,
    required this.calorie,
    required this.restaurant,
    required this.image,
  });

  final String name;
  final num rate;
  final int cookTime;
  final int calorie;
  final String restaurant;
  final String image;
  @override
  List<Object> get props => [name, restaurant];

  static const mockData = [
    Food(
      name: 'Hamburger',
      rate: 4.5,
      cookTime: 32,
      calorie: 120,
      restaurant: 'Test',
      image: 'assets/images/trends/burger.png',
    ),
    Food(
      name: 'Chicken',
      rate: 4.5,
      cookTime: 322,
      calorie: 1210,
      restaurant: 'Test',
      image: 'assets/images/trends/chicken.png',
    ),
  ];
}
