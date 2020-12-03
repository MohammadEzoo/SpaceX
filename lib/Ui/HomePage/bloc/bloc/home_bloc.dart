import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:spacex/Data/repository/irepository.dart';
import 'package:spacex/Data/repository/repository.dart';

import 'package:spacex/Models/Launch.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IRepository _repository;
  HomeBloc(this._repository) : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is GetUpcommings) {
      yield LoadingUpcommings();
      String error;
      final List<Launch> launches =
          await _repository.getUpcommingLuanches().catchError((onError) {
        error = onError;
      });
      if (error == null) {
        yield UpcommingsReady(launches);
      } else {
        yield ErrorInUpcommings(error);
      }
    } else if (event is GetNextLaunch) {
      yield LoadingNext();
      String error;
      final Launch launche =
          await _repository.getNextLaunch().catchError((onError) {
        error = onError;
      });
      if (error == null) {
        yield NextLaunchReady(launche);
      } else {
        yield ErrorInNext(error);
      }
    }
  }
}
