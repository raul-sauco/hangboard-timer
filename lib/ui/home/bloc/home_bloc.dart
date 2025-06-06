import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repositories/workout_repository.dart';
import '../../../domain/models/workout.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final WorkoutRepository _repository;

  HomeBloc(this._repository) : super(const HomeState.initial()) {
    on<_WorkoutRequested>(_onWorkoutRequested);
  }

  Future<void> _onWorkoutRequested(
    _WorkoutRequested event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeState.loading());
    try {
      final workout = await _repository.getWorkout("1");
      emit(HomeState.loaded(workout));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.workoutRequested() = _WorkoutRequested;
  const factory HomeEvent.workoutLoaded(Workout workout) = _WorkoutLoaded;
}

@freezed
sealed class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.error(String message) = Error;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(Workout workout) = WorkoutLoaded;
}
