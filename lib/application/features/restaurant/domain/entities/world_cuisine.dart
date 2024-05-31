import 'package:equatable/equatable.dart';

class WorldCuisine extends Equatable {
  const WorldCuisine({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  List<Object> get props => [name, image];

  static const mockData = [
    WorldCuisine(
        name: 'American', image: 'assets/images/world_cuisine/american.png'),
    WorldCuisine(name: 'Asian', image: 'assets/images/world_cuisine/asian.png'),
    WorldCuisine(
        name: 'Brazilian', image: 'assets/images/world_cuisine/brazilian.png'),
    WorldCuisine(
        name: 'Chinese', image: 'assets/images/world_cuisine/chinese.png'),
    WorldCuisine(name: 'Cuban', image: 'assets/images/world_cuisine/cuban.png'),
    WorldCuisine(
        name: 'English', image: 'assets/images/world_cuisine/english.png'),
    WorldCuisine(
        name: 'French', image: 'assets/images/world_cuisine/french.png'),
    WorldCuisine(
        name: 'German', image: 'assets/images/world_cuisine/german.png'),
    WorldCuisine(name: 'Greek', image: 'assets/images/world_cuisine/greek.png'),
    WorldCuisine(
        name: 'Indian', image: 'assets/images/world_cuisine/indian.png'),
    WorldCuisine(name: 'Irish', image: 'assets/images/world_cuisine/irish.png'),
    WorldCuisine(
        name: 'Mexican', image: 'assets/images/world_cuisine/mexican.png'),
  ];
}
