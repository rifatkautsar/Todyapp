import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class DatabaseFailure extends Failure {
  final String message;
  DatabaseFailure(this.message);

  @override
  List<Object?> get props => [message];
}
