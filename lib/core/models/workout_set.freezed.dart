// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutSet _$WorkoutSetFromJson(Map<String, dynamic> json) {
  return _WorkoutSet.fromJson(json);
}

/// @nodoc
mixin _$WorkoutSet {
  String get setId => throw _privateConstructorUsedError;
  ExercisesEnum? get exercise => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutSetCopyWith<WorkoutSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSetCopyWith<$Res> {
  factory $WorkoutSetCopyWith(
          WorkoutSet value, $Res Function(WorkoutSet) then) =
      _$WorkoutSetCopyWithImpl<$Res, WorkoutSet>;
  @useResult
  $Res call({String setId, ExercisesEnum? exercise, int reps});
}

/// @nodoc
class _$WorkoutSetCopyWithImpl<$Res, $Val extends WorkoutSet>
    implements $WorkoutSetCopyWith<$Res> {
  _$WorkoutSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setId = null,
    Object? exercise = freezed,
    Object? reps = null,
  }) {
    return _then(_value.copyWith(
      setId: null == setId
          ? _value.setId
          : setId // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExercisesEnum?,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkoutSetCopyWith<$Res>
    implements $WorkoutSetCopyWith<$Res> {
  factory _$$_WorkoutSetCopyWith(
          _$_WorkoutSet value, $Res Function(_$_WorkoutSet) then) =
      __$$_WorkoutSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String setId, ExercisesEnum? exercise, int reps});
}

/// @nodoc
class __$$_WorkoutSetCopyWithImpl<$Res>
    extends _$WorkoutSetCopyWithImpl<$Res, _$_WorkoutSet>
    implements _$$_WorkoutSetCopyWith<$Res> {
  __$$_WorkoutSetCopyWithImpl(
      _$_WorkoutSet _value, $Res Function(_$_WorkoutSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setId = null,
    Object? exercise = freezed,
    Object? reps = null,
  }) {
    return _then(_$_WorkoutSet(
      setId: null == setId
          ? _value.setId
          : setId // ignore: cast_nullable_to_non_nullable
              as String,
      exercise: freezed == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as ExercisesEnum?,
      reps: null == reps
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutSet implements _WorkoutSet {
  const _$_WorkoutSet(
      {required this.setId, required this.exercise, required this.reps});

  factory _$_WorkoutSet.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutSetFromJson(json);

  @override
  final String setId;
  @override
  final ExercisesEnum? exercise;
  @override
  final int reps;

  @override
  String toString() {
    return 'WorkoutSet(setId: $setId, exercise: $exercise, reps: $reps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutSet &&
            (identical(other.setId, setId) || other.setId == setId) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.reps, reps) || other.reps == reps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, setId, exercise, reps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkoutSetCopyWith<_$_WorkoutSet> get copyWith =>
      __$$_WorkoutSetCopyWithImpl<_$_WorkoutSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutSetToJson(
      this,
    );
  }
}

abstract class _WorkoutSet implements WorkoutSet {
  const factory _WorkoutSet(
      {required final String setId,
      required final ExercisesEnum? exercise,
      required final int reps}) = _$_WorkoutSet;

  factory _WorkoutSet.fromJson(Map<String, dynamic> json) =
      _$_WorkoutSet.fromJson;

  @override
  String get setId;
  @override
  ExercisesEnum? get exercise;
  @override
  int get reps;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutSetCopyWith<_$_WorkoutSet> get copyWith =>
      throw _privateConstructorUsedError;
}
