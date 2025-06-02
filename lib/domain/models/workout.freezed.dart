// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Workout {

 String get id; int get duration;
/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutCopyWith<Workout> get copyWith => _$WorkoutCopyWithImpl<Workout>(this as Workout, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Workout&&(identical(other.id, id) || other.id == id)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,id,duration);

@override
String toString() {
  return 'Workout(id: $id, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $WorkoutCopyWith<$Res>  {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) _then) = _$WorkoutCopyWithImpl;
@useResult
$Res call({
 String id, int duration
});




}
/// @nodoc
class _$WorkoutCopyWithImpl<$Res>
    implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._self, this._then);

  final Workout _self;
  final $Res Function(Workout) _then;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? duration = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class WorkoutSection implements Workout {
  const WorkoutSection({required this.id, required final  List<Workout> sections, required this.duration}): _sections = sections;


@override final  String id;
 final  List<Workout> _sections;
 List<Workout> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}

@override final  int duration;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutSectionCopyWith<WorkoutSection> get copyWith => _$WorkoutSectionCopyWithImpl<WorkoutSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutSection&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._sections, _sections)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_sections),duration);

@override
String toString() {
  return 'Workout.section(id: $id, sections: $sections, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $WorkoutSectionCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory $WorkoutSectionCopyWith(WorkoutSection value, $Res Function(WorkoutSection) _then) = _$WorkoutSectionCopyWithImpl;
@override @useResult
$Res call({
 String id, List<Workout> sections, int duration
});




}
/// @nodoc
class _$WorkoutSectionCopyWithImpl<$Res>
    implements $WorkoutSectionCopyWith<$Res> {
  _$WorkoutSectionCopyWithImpl(this._self, this._then);

  final WorkoutSection _self;
  final $Res Function(WorkoutSection) _then;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sections = null,Object? duration = null,}) {
  return _then(WorkoutSection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<Workout>,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class WorkoutRest implements Workout {
  const WorkoutRest({required this.id, required this.duration});


@override final  String id;
@override final  int duration;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutRestCopyWith<WorkoutRest> get copyWith => _$WorkoutRestCopyWithImpl<WorkoutRest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutRest&&(identical(other.id, id) || other.id == id)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,id,duration);

@override
String toString() {
  return 'Workout.rest(id: $id, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $WorkoutRestCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory $WorkoutRestCopyWith(WorkoutRest value, $Res Function(WorkoutRest) _then) = _$WorkoutRestCopyWithImpl;
@override @useResult
$Res call({
 String id, int duration
});




}
/// @nodoc
class _$WorkoutRestCopyWithImpl<$Res>
    implements $WorkoutRestCopyWith<$Res> {
  _$WorkoutRestCopyWithImpl(this._self, this._then);

  final WorkoutRest _self;
  final $Res Function(WorkoutRest) _then;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? duration = null,}) {
  return _then(WorkoutRest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class WorkoutHang implements Workout {
  const WorkoutHang({required this.id, required this.duration});


@override final  String id;
@override final  int duration;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutHangCopyWith<WorkoutHang> get copyWith => _$WorkoutHangCopyWithImpl<WorkoutHang>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutHang&&(identical(other.id, id) || other.id == id)&&(identical(other.duration, duration) || other.duration == duration));
}


@override
int get hashCode => Object.hash(runtimeType,id,duration);

@override
String toString() {
  return 'Workout.hang(id: $id, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $WorkoutHangCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory $WorkoutHangCopyWith(WorkoutHang value, $Res Function(WorkoutHang) _then) = _$WorkoutHangCopyWithImpl;
@override @useResult
$Res call({
 String id, int duration
});




}
/// @nodoc
class _$WorkoutHangCopyWithImpl<$Res>
    implements $WorkoutHangCopyWith<$Res> {
  _$WorkoutHangCopyWithImpl(this._self, this._then);

  final WorkoutHang _self;
  final $Res Function(WorkoutHang) _then;

/// Create a copy of Workout
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? duration = null,}) {
  return _then(WorkoutHang(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
