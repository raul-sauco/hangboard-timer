// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimerEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent()';
}


}

/// @nodoc
class $TimerEventCopyWith<$Res>  {
$TimerEventCopyWith(TimerEvent _, $Res Function(TimerEvent) __);
}


/// @nodoc


class _Start with DiagnosticableTreeMixin implements TimerEvent {
  const _Start();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent.start'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Start);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent.start()';
}


}




/// @nodoc


class _Tick with DiagnosticableTreeMixin implements TimerEvent {
  const _Tick();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent.tick'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent.tick()';
}


}




/// @nodoc


class _Pause with DiagnosticableTreeMixin implements TimerEvent {
  const _Pause();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent.pause'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent.pause()';
}


}




/// @nodoc


class _Resume with DiagnosticableTreeMixin implements TimerEvent {
  const _Resume();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent.resume'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resume);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent.resume()';
}


}




/// @nodoc


class _Reset with DiagnosticableTreeMixin implements TimerEvent {
  const _Reset();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerEvent.reset'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerEvent.reset()';
}


}




/// @nodoc
mixin _$TimerState implements DiagnosticableTreeMixin {

 int get timeLeft; int get totalTime;
/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerStateCopyWith<TimerState> get copyWith => _$TimerStateCopyWithImpl<TimerState>(this as TimerState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerState'))
    ..add(DiagnosticsProperty('timeLeft', timeLeft))..add(DiagnosticsProperty('totalTime', totalTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerState&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime));
}


@override
int get hashCode => Object.hash(runtimeType,timeLeft,totalTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerState(timeLeft: $timeLeft, totalTime: $totalTime)';
}


}

/// @nodoc
abstract mixin class $TimerStateCopyWith<$Res>  {
  factory $TimerStateCopyWith(TimerState value, $Res Function(TimerState) _then) = _$TimerStateCopyWithImpl;
@useResult
$Res call({
 int timeLeft, int totalTime
});




}
/// @nodoc
class _$TimerStateCopyWithImpl<$Res>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._self, this._then);

  final TimerState _self;
  final $Res Function(TimerState) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timeLeft = null,Object? totalTime = null,}) {
  return _then(_self.copyWith(
timeLeft: null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,totalTime: null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class Initial extends TimerState with DiagnosticableTreeMixin {
  const Initial(this.timeLeft, this.totalTime): super._();
  

@override final  int timeLeft;
@override final  int totalTime;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitialCopyWith<Initial> get copyWith => _$InitialCopyWithImpl<Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerState.initial'))
    ..add(DiagnosticsProperty('timeLeft', timeLeft))..add(DiagnosticsProperty('totalTime', totalTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime));
}


@override
int get hashCode => Object.hash(runtimeType,timeLeft,totalTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerState.initial(timeLeft: $timeLeft, totalTime: $totalTime)';
}


}

/// @nodoc
abstract mixin class $InitialCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) = _$InitialCopyWithImpl;
@override @useResult
$Res call({
 int timeLeft, int totalTime
});




}
/// @nodoc
class _$InitialCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeLeft = null,Object? totalTime = null,}) {
  return _then(Initial(
null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Running extends TimerState with DiagnosticableTreeMixin {
  const Running(this.timeLeft, this.totalTime): super._();
  

@override final  int timeLeft;
@override final  int totalTime;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunningCopyWith<Running> get copyWith => _$RunningCopyWithImpl<Running>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerState.running'))
    ..add(DiagnosticsProperty('timeLeft', timeLeft))..add(DiagnosticsProperty('totalTime', totalTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Running&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime));
}


@override
int get hashCode => Object.hash(runtimeType,timeLeft,totalTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerState.running(timeLeft: $timeLeft, totalTime: $totalTime)';
}


}

/// @nodoc
abstract mixin class $RunningCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $RunningCopyWith(Running value, $Res Function(Running) _then) = _$RunningCopyWithImpl;
@override @useResult
$Res call({
 int timeLeft, int totalTime
});




}
/// @nodoc
class _$RunningCopyWithImpl<$Res>
    implements $RunningCopyWith<$Res> {
  _$RunningCopyWithImpl(this._self, this._then);

  final Running _self;
  final $Res Function(Running) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeLeft = null,Object? totalTime = null,}) {
  return _then(Running(
null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Paused extends TimerState with DiagnosticableTreeMixin {
  const Paused(this.timeLeft, this.totalTime): super._();
  

@override final  int timeLeft;
@override final  int totalTime;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PausedCopyWith<Paused> get copyWith => _$PausedCopyWithImpl<Paused>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimerState.paused'))
    ..add(DiagnosticsProperty('timeLeft', timeLeft))..add(DiagnosticsProperty('totalTime', totalTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Paused&&(identical(other.timeLeft, timeLeft) || other.timeLeft == timeLeft)&&(identical(other.totalTime, totalTime) || other.totalTime == totalTime));
}


@override
int get hashCode => Object.hash(runtimeType,timeLeft,totalTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimerState.paused(timeLeft: $timeLeft, totalTime: $totalTime)';
}


}

/// @nodoc
abstract mixin class $PausedCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $PausedCopyWith(Paused value, $Res Function(Paused) _then) = _$PausedCopyWithImpl;
@override @useResult
$Res call({
 int timeLeft, int totalTime
});




}
/// @nodoc
class _$PausedCopyWithImpl<$Res>
    implements $PausedCopyWith<$Res> {
  _$PausedCopyWithImpl(this._self, this._then);

  final Paused _self;
  final $Res Function(Paused) _then;

/// Create a copy of TimerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeLeft = null,Object? totalTime = null,}) {
  return _then(Paused(
null == timeLeft ? _self.timeLeft : timeLeft // ignore: cast_nullable_to_non_nullable
as int,null == totalTime ? _self.totalTime : totalTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
