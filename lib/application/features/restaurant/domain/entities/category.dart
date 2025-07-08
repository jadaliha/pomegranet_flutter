import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({required this.title, required this.image});
  final String title;
  final String image;

  @override
  List<Object> get props => [title, image];

  static const mockData = [
    Category(title: 'Burger', image: 'assets/images/categories/burger.png'),
    Category(title: 'Noodles', image: 'assets/images/categories/noodles.png'),
    Category(title: 'Pizza', image: 'assets/images/categories/pizza.png'),
    Category(title: 'Chicken', image: 'assets/images/categories/chicken.png'),
    Category(title: 'Sushi', image: 'assets/images/categories/sushi.png'),
    Category(title: 'Meat', image: 'assets/images/categories/meat.png'),
    Category(title: 'Salad', image: 'assets/images/categories/salad.png'),
    Category(title: 'Fish', image: 'assets/images/categories/fish.png'),
    // Category(title: 'Rolls', image: 'assets/images/categories/rolls.png'),
    Category(title: 'Soup', image: 'assets/images/categories/soup.png'),
    Category(
        title: 'Kid-Friendly',
        image: 'assets/images/categories/kid-friendly.png'),
  ];
}
