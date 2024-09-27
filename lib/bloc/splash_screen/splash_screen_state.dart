part of 'splash_screen_bloc.dart';

@immutable
sealed class SplashScreenState {}

final class SplashScreenLoadingState extends SplashScreenState {}

final class UserLoggedInState extends SplashScreenState {}

final class UserNotLoggedInState extends SplashScreenState {}
