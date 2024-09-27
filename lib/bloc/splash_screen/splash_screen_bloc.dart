import 'package:templaterpone/utils/app_constants_utils.dart';
import 'package:templaterpone/utils/app_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenLoadingState()) {
    on<StartSplash>(_startSplash);
  }

  void _startSplash(SplashScreenEvent event, Emitter emit) async {
    try {
      await Future.delayed(
        const Duration(
          seconds: AppConstantsUtils.constSplashSeconds,
        ),
      );
      emit(UserLoggedInState());
    } catch (e) {
      AppFunctions.printError(
        methodName: "SplashScreenBloc > _startSplash",
        errorString: e.toString(),
      );
      emit(UserNotLoggedInState());
    }
  }
}
