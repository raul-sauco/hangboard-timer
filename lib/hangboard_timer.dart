import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'timer/bloc.dart';

class HangboardTimer extends StatelessWidget {
  const HangboardTimer({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TimerBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Hangboard Timer')),
      body: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Stack(
            children: [
              Container(color: Colors.red),
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
                      style: const TextStyle(fontSize: 72),
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
