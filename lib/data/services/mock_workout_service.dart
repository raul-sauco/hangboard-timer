import '../../domain/models/workout.dart';
import 'workout_service.dart';

/// Hardcoded mock service used to provide test data.
class MockWorkoutService implements WorkoutService {
  @override
  Future<Workout> getWorkout(String id) async {
    // Simulate anync call
    await Future.delayed(Duration(milliseconds: 300));
    return Workout.section(id: "1", duration: 3600, sections: List.empty());
  }
}
