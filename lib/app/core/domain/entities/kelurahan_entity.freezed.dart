// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kelurahan_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KelurahanEntity {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of KelurahanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KelurahanEntityCopyWith<KelurahanEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KelurahanEntityCopyWith<$Res> {
  factory $KelurahanEntityCopyWith(
          KelurahanEntity value, $Res Function(KelurahanEntity) then) =
      _$KelurahanEntityCopyWithImpl<$Res, KelurahanEntity>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$KelurahanEntityCopyWithImpl<$Res, $Val extends KelurahanEntity>
    implements $KelurahanEntityCopyWith<$Res> {
  _$KelurahanEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KelurahanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KelurahanEntityImplCopyWith<$Res>
    implements $KelurahanEntityCopyWith<$Res> {
  factory _$$KelurahanEntityImplCopyWith(_$KelurahanEntityImpl value,
          $Res Function(_$KelurahanEntityImpl) then) =
      __$$KelurahanEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$KelurahanEntityImplCopyWithImpl<$Res>
    extends _$KelurahanEntityCopyWithImpl<$Res, _$KelurahanEntityImpl>
    implements _$$KelurahanEntityImplCopyWith<$Res> {
  __$$KelurahanEntityImplCopyWithImpl(
      _$KelurahanEntityImpl _value, $Res Function(_$KelurahanEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of KelurahanEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$KelurahanEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KelurahanEntityImpl implements _KelurahanEntity {
  _$KelurahanEntityImpl({required this.code, required this.name});

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'KelurahanEntity(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KelurahanEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of KelurahanEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KelurahanEntityImplCopyWith<_$KelurahanEntityImpl> get copyWith =>
      __$$KelurahanEntityImplCopyWithImpl<_$KelurahanEntityImpl>(
          this, _$identity);
}

abstract class _KelurahanEntity implements KelurahanEntity {
  factory _KelurahanEntity(
      {required final String code,
      required final String name}) = _$KelurahanEntityImpl;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of KelurahanEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KelurahanEntityImplCopyWith<_$KelurahanEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
