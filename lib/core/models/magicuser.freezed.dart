// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'magicuser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MagicUser _$MagicUserFromJson(Map<String, dynamic> json) {
  return _MagicUser.fromJson(json);
}

/// @nodoc
mixin _$MagicUser {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MagicUserCopyWith<MagicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagicUserCopyWith<$Res> {
  factory $MagicUserCopyWith(MagicUser value, $Res Function(MagicUser) then) =
      _$MagicUserCopyWithImpl<$Res, MagicUser>;
  @useResult
  $Res call(
      {String name,
      int age,
      double weight,
      double height,
      String gender,
      String email,
      String uid});
}

/// @nodoc
class _$MagicUserCopyWithImpl<$Res, $Val extends MagicUser>
    implements $MagicUserCopyWith<$Res> {
  _$MagicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? weight = null,
    Object? height = null,
    Object? gender = null,
    Object? email = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MagicUserCopyWith<$Res> implements $MagicUserCopyWith<$Res> {
  factory _$$_MagicUserCopyWith(
          _$_MagicUser value, $Res Function(_$_MagicUser) then) =
      __$$_MagicUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int age,
      double weight,
      double height,
      String gender,
      String email,
      String uid});
}

/// @nodoc
class __$$_MagicUserCopyWithImpl<$Res>
    extends _$MagicUserCopyWithImpl<$Res, _$_MagicUser>
    implements _$$_MagicUserCopyWith<$Res> {
  __$$_MagicUserCopyWithImpl(
      _$_MagicUser _value, $Res Function(_$_MagicUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? weight = null,
    Object? height = null,
    Object? gender = null,
    Object? email = null,
    Object? uid = null,
  }) {
    return _then(_$_MagicUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MagicUser implements _MagicUser {
  const _$_MagicUser(
      {required this.name,
      required this.age,
      required this.weight,
      required this.height,
      required this.gender,
      required this.email,
      required this.uid});

  factory _$_MagicUser.fromJson(Map<String, dynamic> json) =>
      _$$_MagicUserFromJson(json);

  @override
  final String name;
  @override
  final int age;
  @override
  final double weight;
  @override
  final double height;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String uid;

  @override
  String toString() {
    return 'MagicUser(name: $name, age: $age, weight: $weight, height: $height, gender: $gender, email: $email, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MagicUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, age, weight, height, gender, email, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MagicUserCopyWith<_$_MagicUser> get copyWith =>
      __$$_MagicUserCopyWithImpl<_$_MagicUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MagicUserToJson(
      this,
    );
  }
}

abstract class _MagicUser implements MagicUser {
  const factory _MagicUser(
      {required final String name,
      required final int age,
      required final double weight,
      required final double height,
      required final String gender,
      required final String email,
      required final String uid}) = _$_MagicUser;

  factory _MagicUser.fromJson(Map<String, dynamic> json) =
      _$_MagicUser.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  double get weight;
  @override
  double get height;
  @override
  String get gender;
  @override
  String get email;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$_MagicUserCopyWith<_$_MagicUser> get copyWith =>
      throw _privateConstructorUsedError;
}
