import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
