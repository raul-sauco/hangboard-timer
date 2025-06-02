import '../../domain/models/workout.dart';

abstract class WorkoutService {
  Future<Workout> getWorkout(String id);
}
