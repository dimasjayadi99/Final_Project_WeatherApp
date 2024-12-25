// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provinsi_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProvinsiEntity {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of ProvinsiEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProvinsiEntityCopyWith<ProvinsiEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinsiEntityCopyWith<$Res> {
  factory $ProvinsiEntityCopyWith(
          ProvinsiEntity value, $Res Function(ProvinsiEntity) then) =
      _$ProvinsiEntityCopyWithImpl<$Res, ProvinsiEntity>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$ProvinsiEntityCopyWithImpl<$Res, $Val extends ProvinsiEntity>
    implements $ProvinsiEntityCopyWith<$Res> {
  _$ProvinsiEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProvinsiEntity
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
abstract class _$$ProvinsiEntityImplCopyWith<$Res>
    implements $ProvinsiEntityCopyWith<$Res> {
  factory _$$ProvinsiEntityImplCopyWith(_$ProvinsiEntityImpl value,
          $Res Function(_$ProvinsiEntityImpl) then) =
      __$$ProvinsiEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$ProvinsiEntityImplCopyWithImpl<$Res>
    extends _$ProvinsiEntityCopyWithImpl<$Res, _$ProvinsiEntityImpl>
    implements _$$ProvinsiEntityImplCopyWith<$Res> {
  __$$ProvinsiEntityImplCopyWithImpl(
      _$ProvinsiEntityImpl _value, $Res Function(_$ProvinsiEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProvinsiEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$ProvinsiEntityImpl(
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

class _$ProvinsiEntityImpl implements _ProvinsiEntity {
  _$ProvinsiEntityImpl({required this.code, required this.name});

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'ProvinsiEntity(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinsiEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of ProvinsiEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinsiEntityImplCopyWith<_$ProvinsiEntityImpl> get copyWith =>
      __$$ProvinsiEntityImplCopyWithImpl<_$ProvinsiEntityImpl>(
          this, _$identity);
}

abstract class _ProvinsiEntity implements ProvinsiEntity {
  factory _ProvinsiEntity(
      {required final String code,
      required final String name}) = _$ProvinsiEntityImpl;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of ProvinsiEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProvinsiEntityImplCopyWith<_$ProvinsiEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
