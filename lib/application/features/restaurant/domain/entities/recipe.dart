import 'package:equatable/equatable.dart';

class Recipe extends Equatable {
  const Recipe({required this.recipe});

  final List<String> recipe;

  @override
  List<Object> get props => [recipe];

  static const mockData = [
    Recipe(
      recipe: [
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Minim mollit non deserunt ullamco',
      ],
    )
  ];
}
