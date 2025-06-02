import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';

/// Workout is the container class for any workout session in the app.
@freezed
sealed class Workout with _$Workout {
  const factory Workout.section({
    required String id,
    required List<Workout> sections,
    required int duration,
  }) = WorkoutSection;
  const factory Workout.rest({required String id, required int duration}) =
      WorkoutRest;
  const factory Workout.hang({required String id, required int duration}) =
      WorkoutHang;
}
