import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  factory WeatherEntity({
    required int temperature,
    required String weatherDesc,
    required String weatherDescEn,
    required double windSpeed,
    required String windDirection,
    required int humidity,
    required DateTime localDatetime,
  }) = _WeatherEntity;
}
