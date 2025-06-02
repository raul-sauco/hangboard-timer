import '../../domain/models/workout.dart';
import '../services/workout_service.dart';

class WorkoutRepository {
  final WorkoutService service;

  WorkoutRepository(this.service);

  Future<Workout> getWorkout(String id) {
    return service.getWorkout(id);
  }
}
