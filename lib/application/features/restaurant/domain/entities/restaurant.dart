import 'package:equatable/equatable.dart';

class Restaurant extends Equatable {
  const Restaurant(
      {required this.name,
      required this.rate,
      required this.distance,
      required this.address,
      required this.image});

  final String name;
  final num rate;
  final num distance;
  final String address;
  final String image;

  @override
  List<Object> get props => [name, distance];

  static const mockData = [
    Restaurant(
      name: 'Sunday gather',
      rate: 4.5,
      distance: 0.5,
      address: '76 Eighth Avenue',
      image: 'assets/images/restaurants/sunday_gather.png',
    ),
    Restaurant(
      name: 'Kichi gather',
      rate: 4.9,
      distance: 2.5,
      address: '89 Eighth Avenue',
      image: 'assets/images/restaurants/kichi_cafe.png',
    )
  ];
}
