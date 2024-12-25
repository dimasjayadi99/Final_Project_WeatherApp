// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEntity {
  int get temperature => throw _privateConstructorUsedError;
  String get weatherDesc => throw _privateConstructorUsedError;
  String get weatherDescEn => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  String get windDirection => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  DateTime get localDatetime => throw _privateConstructorUsedError;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(
          WeatherEntity value, $Res Function(WeatherEntity) then) =
      _$WeatherEntityCopyWithImpl<$Res, WeatherEntity>;
  @useResult
  $Res call(
      {int temperature,
      String weatherDesc,
      String weatherDescEn,
      double windSpeed,
      String windDirection,
      int humidity,
      DateTime localDatetime});
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res, $Val extends WeatherEntity>
    implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? weatherDesc = null,
    Object? weatherDescEn = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? humidity = null,
    Object? localDatetime = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherDesc: null == weatherDesc
          ? _value.weatherDesc
          : weatherDesc // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescEn: null == weatherDescEn
          ? _value.weatherDescEn
          : weatherDescEn // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      localDatetime: null == localDatetime
          ? _value.localDatetime
          : localDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherEntityImplCopyWith<$Res>
    implements $WeatherEntityCopyWith<$Res> {
  factory _$$WeatherEntityImplCopyWith(
          _$WeatherEntityImpl value, $Res Function(_$WeatherEntityImpl) then) =
      __$$WeatherEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int temperature,
      String weatherDesc,
      String weatherDescEn,
      double windSpeed,
      String windDirection,
      int humidity,
      DateTime localDatetime});
}

/// @nodoc
class __$$WeatherEntityImplCopyWithImpl<$Res>
    extends _$WeatherEntityCopyWithImpl<$Res, _$WeatherEntityImpl>
    implements _$$WeatherEntityImplCopyWith<$Res> {
  __$$WeatherEntityImplCopyWithImpl(
      _$WeatherEntityImpl _value, $Res Function(_$WeatherEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? weatherDesc = null,
    Object? weatherDescEn = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? humidity = null,
    Object? localDatetime = null,
  }) {
    return _then(_$WeatherEntityImpl(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      weatherDesc: null == weatherDesc
          ? _value.weatherDesc
          : weatherDesc // ignore: cast_nullable_to_non_nullable
              as String,
      weatherDescEn: null == weatherDescEn
          ? _value.weatherDescEn
          : weatherDescEn // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      localDatetime: null == localDatetime
          ? _value.localDatetime
          : localDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$WeatherEntityImpl implements _WeatherEntity {
  _$WeatherEntityImpl(
      {required this.temperature,
      required this.weatherDesc,
      required this.weatherDescEn,
      required this.windSpeed,
      required this.windDirection,
      required this.humidity,
      required this.localDatetime});

  @override
  final int temperature;
  @override
  final String weatherDesc;
  @override
  final String weatherDescEn;
  @override
  final double windSpeed;
  @override
  final String windDirection;
  @override
  final int humidity;
  @override
  final DateTime localDatetime;

  @override
  String toString() {
    return 'WeatherEntity(temperature: $temperature, weatherDesc: $weatherDesc, weatherDescEn: $weatherDescEn, windSpeed: $windSpeed, windDirection: $windDirection, humidity: $humidity, localDatetime: $localDatetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherEntityImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherDesc, weatherDesc) ||
                other.weatherDesc == weatherDesc) &&
            (identical(other.weatherDescEn, weatherDescEn) ||
                other.weatherDescEn == weatherDescEn) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.localDatetime, localDatetime) ||
                other.localDatetime == localDatetime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temperature, weatherDesc,
      weatherDescEn, windSpeed, windDirection, humidity, localDatetime);

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      __$$WeatherEntityImplCopyWithImpl<_$WeatherEntityImpl>(this, _$identity);
}

abstract class _WeatherEntity implements WeatherEntity {
  factory _WeatherEntity(
      {required final int temperature,
      required final String weatherDesc,
      required final String weatherDescEn,
      required final double windSpeed,
      required final String windDirection,
      required final int humidity,
      required final DateTime localDatetime}) = _$WeatherEntityImpl;

  @override
  int get temperature;
  @override
  String get weatherDesc;
  @override
  String get weatherDescEn;
  @override
  double get windSpeed;
  @override
  String get windDirection;
  @override
  int get humidity;
  @override
  DateTime get localDatetime;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherEntityImplCopyWith<_$WeatherEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
