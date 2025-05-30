part of 'splashscreen_bloc.dart';

abstract class SplashscreenState extends Equatable {
  const SplashscreenState();

  @override
  List<Object> get props => [];
}

class SplashscreenInitial extends SplashscreenState {}

class SplashscreenLoading extends SplashscreenState {}

class SplashAuthenticated extends SplashscreenState {}

class SplashUnauthenticated extends SplashscreenState {}
