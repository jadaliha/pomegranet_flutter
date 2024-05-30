import 'package:equatable/equatable.dart';

class Category extends Equatable {
  const Category({required this.title, required this.image});
  final String title;
  final String image;

  @override
  List<Object> get props => [title, image];
}
