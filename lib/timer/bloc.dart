import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _initialDuration = 30;
  Timer? _ticker;

  TimerBloc()
    : super(const TimerState.initial(_initialDuration, _initialDuration)) {
    on<_Start>(_onStart);
    on<_Tick>(_onTick);
    on<_Pause>(_onPause);
    on<_Resume>(_onResume);
    on<_Reset>(_onReset);
  }

  void _onStart(_Start event, Emitter<TimerState> emit) {
    _ticker?.cancel();
    _startTicker();
    emit(TimerState.running(state.timeLeft, _initialDuration));
  }

  void _onTick(_Tick event, Emitter<TimerState> emit) {
    final newTime = state.timeLeft - 1;
    if (newTime <= 0) {
      _ticker?.cancel();
      emit(const TimerState.initial(_initialDuration, _initialDuration));
    } else {
      emit(TimerState.running(newTime, _initialDuration));
    }
  }

  void _onPause(_Pause event, Emitter<TimerState> emit) {
    _ticker?.cancel();
    emit(TimerState.paused(state.timeLeft, _initialDuration));
  }

  void _onResume(_Resume event, Emitter<TimerState> emit) {
    _startTicker();
    emit(TimerState.running(state.timeLeft, _initialDuration));
  }

  void _onReset(_Reset event, Emitter<TimerState> emit) {
    _ticker?.cancel();
    emit(const TimerState.initial(_initialDuration, _initialDuration));
  }

  void _startTicker() {
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const TimerEvent.tick());
    });
  }

  @override
  Future<void> close() {
    _ticker?.cancel();
    return super.close();
  }
}

@freezed
sealed class TimerEvent with _$TimerEvent {
  const factory TimerEvent.start() = _Start;
  const factory TimerEvent.tick() = _Tick;
  const factory TimerEvent.pause() = _Pause;
  const factory TimerEvent.resume() = _Resume;
  const factory TimerEvent.reset() = _Reset;
}

@freezed
sealed class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState.initial(int timeLeft, int totalTime) = Initial;
  const factory TimerState.running(int timeLeft, int totalTime) = Running;
  const factory TimerState.paused(int timeLeft, int totalTime) = Paused;
}
