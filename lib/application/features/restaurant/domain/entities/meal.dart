import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  const Meal({required this.title, required this.image});

  final String title;
  final String image;

  @override
  List<Object> get props => [title, image];

  static const mockData = [
    Meal(title: 'Breakfast', image: 'assets/images/meals/breakfast.png'),
    Meal(title: 'Brunch', image: 'assets/images/meals/brunch.png'),
    Meal(title: 'Lunch', image: 'assets/images/meals/lunch.png'),
    Meal(title: 'Dessert', image: 'assets/images/meals/dessert.png'),
    Meal(title: 'Snack', image: 'assets/images/meals/snack.png'),
    Meal(title: 'Dinner', image: 'assets/images/meals/dinner.png'),
    Meal(title: 'Appetizer', image: 'assets/images/meals/appetizer.png'),
  ];
}
