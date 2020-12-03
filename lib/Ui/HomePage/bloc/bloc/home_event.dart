part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}
class GetUpcommings extends HomeEvent{}
class GetNextLaunch extends HomeEvent{}