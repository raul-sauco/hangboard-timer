// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class _WorkoutRequested implements HomeEvent {
  const _WorkoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.workoutRequested()';
}


}




/// @nodoc


class _WorkoutLoaded implements HomeEvent {
  const _WorkoutLoaded(this.workout);
  

 final  Workout workout;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutLoadedCopyWith<_WorkoutLoaded> get copyWith => __$WorkoutLoadedCopyWithImpl<_WorkoutLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutLoaded&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'HomeEvent.workoutLoaded(workout: $workout)';
}


}

/// @nodoc
abstract mixin class _$WorkoutLoadedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$WorkoutLoadedCopyWith(_WorkoutLoaded value, $Res Function(_WorkoutLoaded) _then) = __$WorkoutLoadedCopyWithImpl;
@useResult
$Res call({
 Workout workout
});


$WorkoutCopyWith<$Res> get workout;

}
/// @nodoc
class __$WorkoutLoadedCopyWithImpl<$Res>
    implements _$WorkoutLoadedCopyWith<$Res> {
  __$WorkoutLoadedCopyWithImpl(this._self, this._then);

  final _WorkoutLoaded _self;
  final $Res Function(_WorkoutLoaded) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(_WorkoutLoaded(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as Workout,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutCopyWith<$Res> get workout {
  
  return $WorkoutCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// @nodoc


class HomeInitial extends HomeState {
  const HomeInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class Error extends HomeState {
  const Error(this.message): super._();
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Loading extends HomeState {
  const Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class WorkoutLoaded extends HomeState {
  const WorkoutLoaded(this.workout): super._();
  

 final  Workout workout;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutLoadedCopyWith<WorkoutLoaded> get copyWith => _$WorkoutLoadedCopyWithImpl<WorkoutLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutLoaded&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'HomeState.loaded(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $WorkoutLoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $WorkoutLoadedCopyWith(WorkoutLoaded value, $Res Function(WorkoutLoaded) _then) = _$WorkoutLoadedCopyWithImpl;
@useResult
$Res call({
 Workout workout
});


$WorkoutCopyWith<$Res> get workout;

}
/// @nodoc
class _$WorkoutLoadedCopyWithImpl<$Res>
    implements $WorkoutLoadedCopyWith<$Res> {
  _$WorkoutLoadedCopyWithImpl(this._self, this._then);

  final WorkoutLoaded _self;
  final $Res Function(WorkoutLoaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(WorkoutLoaded(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as Workout,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutCopyWith<$Res> get workout {
  
  return $WorkoutCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

// dart format on
