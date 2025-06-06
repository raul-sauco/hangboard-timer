import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/workout.dart';
import '../timer/timer_bloc.dart';
import '../timer/timer_screen.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final Color primary = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hangboard Timer'), centerTitle: true),
      body: Center(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is WorkoutLoaded) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => BlocProvider(
                        create: (_) => TimerBloc(state.workout),
                        child: const TimerScreen(),
                      ),
                ),
              );
            }
          },
          builder: (context, state) {
            return switch (state) {
              HomeInitial() => ElevatedButton(
                onPressed: () {
                  context.read<HomeBloc>().add(HomeEvent.workoutRequested());
                },
                child: Text("Load Workout"),
              ),
              Loading() => const CircularProgressIndicator(),
              Error(:final message) => Text("Error: $message"),
              WorkoutLoaded(:final Workout workout) => Text(
                "Workout ${workout.id} loaded",
              ),
            };
          },
        ),
      ),
    );
  }
}
