part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class UpcommingsReady extends HomeState {
  final List<Launch> launches;
  UpcommingsReady(this.launches);
}

class NextLaunchReady extends HomeState {
  final Launch launch;
  NextLaunchReady(this.launch);
}

class ErrorInUpcommings extends HomeState {
  final String error;
  ErrorInUpcommings(this.error);
}


class ErrorInNext extends HomeState {
  final String error;
  ErrorInNext(this.error);
}


class LoadingNext extends HomeState{}
class LoadingUpcommings extends HomeState{}