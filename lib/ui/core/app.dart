import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repositories/workout_repository.dart';
import '../../data/services/mock_workout_service.dart';
import '../home/bloc/home_bloc.dart';
import '../home/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});
  final Color primary = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: primary);
    final WorkoutRepository repository = WorkoutRepository(
      MockWorkoutService(),
    );

    return MaterialApp(
      title: 'Hangboard Timer',
      theme: ThemeData(
        colorScheme: colorScheme,
        useMaterial3: true, // optional, for Material 3
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
          ),
        ),
      ),
      home: BlocProvider(
        create: (_) => HomeBloc(repository),
        child: const HomeScreen(),
      ),
    );
  }
}
