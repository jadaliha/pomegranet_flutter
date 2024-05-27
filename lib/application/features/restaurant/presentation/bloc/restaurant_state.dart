part of 'restaurant_bloc.dart';

sealed class RestaurantState extends Equatable {
  const RestaurantState();
  
  @override
  List<Object> get props => [];
}

final class RestaurantInitial extends RestaurantState {}
