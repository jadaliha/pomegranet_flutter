import 'package:equatable/equatable.dart';

class Review extends Equatable {
  const Review({
    required this.avatar,
    required this.name,
    required this.dateTime,
    required this.isVerifiedPurchase,
    required this.content,
    required this.rate,
    required this.like,
  });
  final String avatar;
  final String name;
  final DateTime dateTime;
  final bool isVerifiedPurchase;
  final String content;
  final num rate;
  final int like;

  @override
  List<Object> get props => throw UnimplementedError();

  static final mockData = [
    Review(
      avatar: 'assets/avatars/ashish.png',
      name: 'Ashish Asharaful',
      dateTime: DateTime.now(),
      isVerifiedPurchase: true,
      content:
          'Very nice ! On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the ',
      rate: 4.5,
      like: 234,
    ),
    Review(
      avatar: 'assets/avatars/farrokh.png',
      name: 'Farrokh Hashemi',
      dateTime: DateTime.now(),
      isVerifiedPurchase: false,
      content:
          'Very nice ! On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the ',
      rate: 4,
      like: 123,
    ),
  ];
}
