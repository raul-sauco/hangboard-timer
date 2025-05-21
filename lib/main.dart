import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'timer/bloc.dart';
import 'hangboard_timer.dart';

void main() {
  runApp(const HangboardApp());
}

class HangboardApp extends StatelessWidget {
  const HangboardApp({super.key});
  final Color primary = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: primary);

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
        create: (_) => TimerBloc(),
        child: const HangboardTimer(),
      ),
    );
  }
}
