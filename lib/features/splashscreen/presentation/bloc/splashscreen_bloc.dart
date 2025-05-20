import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';

class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  SplashscreenBloc() : super(SplashscreenInitial()) {
    on<CheckAuthEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2)); // simulasi

      final isLoggedIn = await _fakeAuthCheck();

      if (isLoggedIn) {
        emit(SplashAuthenticated());
      } else {
        emit(SplashUnauthenticated());
      }
    });
  }
}

Future<bool> _fakeAuthCheck() async {
  // Ganti dengan real logic
  return false;
}
