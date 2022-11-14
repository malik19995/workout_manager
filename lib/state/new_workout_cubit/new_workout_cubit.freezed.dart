// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_workout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewWorkoutState {
  Workout? get newWorkout => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Workout? newWorkout) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Workout? newWorkout)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Workout? newWorkout)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewWorkoutStateCopyWith<NewWorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWorkoutStateCopyWith<$Res> {
  factory $NewWorkoutStateCopyWith(
          NewWorkoutState value, $Res Function(NewWorkoutState) then) =
      _$NewWorkoutStateCopyWithImpl<$Res, NewWorkoutState>;
  @useResult
  $Res call({Workout? newWorkout});

  $WorkoutCopyWith<$Res>? get newWorkout;
}

/// @nodoc
class _$NewWorkoutStateCopyWithImpl<$Res, $Val extends NewWorkoutState>
    implements $NewWorkoutStateCopyWith<$Res> {
  _$NewWorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newWorkout = freezed,
  }) {
    return _then(_value.copyWith(
      newWorkout: freezed == newWorkout
          ? _value.newWorkout
          : newWorkout // ignore: cast_nullable_to_non_nullable
              as Workout?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkoutCopyWith<$Res>? get newWorkout {
    if (_value.newWorkout == null) {
      return null;
    }

    return $WorkoutCopyWith<$Res>(_value.newWorkout!, (value) {
      return _then(_value.copyWith(newWorkout: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res>
    implements $NewWorkoutStateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Workout? newWorkout});

  @override
  $WorkoutCopyWith<$Res>? get newWorkout;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res>
    extends _$NewWorkoutStateCopyWithImpl<$Res, _$_Update>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newWorkout = freezed,
  }) {
    return _then(_$_Update(
      freezed == newWorkout
          ? _value.newWorkout
          : newWorkout // ignore: cast_nullable_to_non_nullable
              as Workout?,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.newWorkout);

  @override
  final Workout? newWorkout;

  @override
  String toString() {
    return 'NewWorkoutState.update(newWorkout: $newWorkout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            (identical(other.newWorkout, newWorkout) ||
                other.newWorkout == newWorkout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newWorkout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Workout? newWorkout) update,
  }) {
    return update(newWorkout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Workout? newWorkout)? update,
  }) {
    return update?.call(newWorkout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Workout? newWorkout)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(newWorkout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements NewWorkoutState {
  const factory _Update(final Workout? newWorkout) = _$_Update;

  @override
  Workout? get newWorkout;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}
