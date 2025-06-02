import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'timer_bloc.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TimerBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Hangboard Timer'), centerTitle: true),
      body: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Stack(
            children: [
              Container(color: Colors.red[900]),
              Align(
                alignment: Alignment.centerRight,
                child: FractionallySizedBox(
                  widthFactor: (state.timeLeft / state.totalTime).clamp(
                    0.0,
                    1.0,
                  ),
                  child: Container(color: Colors.green),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 24.0,
                      ),
                      width: double.infinity,
                      child: Image.asset('assets/images/hangboard.png'),
                    ),
                    const SizedBox(height: 48),
                    Text(
                      '${state.secondsLeft}',
                      style: TextStyle(
                        fontSize: 120,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 4,
                            color: Colors.black.withValues(alpha: 0.5),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    switch (state) {
                      Initial() => ElevatedButton(
                        onPressed: () => bloc.add(const TimerEvent.start()),
                        child: const Text('Start'),
                      ),
                      Running() => ElevatedButton(
                        onPressed: () => bloc.add(const TimerEvent.pause()),
                        child: const Text('Pause'),
                      ),
                      Paused() => ElevatedButton(
                        onPressed: () => bloc.add(const TimerEvent.resume()),
                        child: const Text('Resume'),
                      ),
                    },
                    ElevatedButton(
                      onPressed: () => bloc.add(const TimerEvent.reset()),
                      child: const Text('Reset'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
