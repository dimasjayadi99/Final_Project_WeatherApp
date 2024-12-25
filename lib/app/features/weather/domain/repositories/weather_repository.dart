import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<List<List<WeatherEntity>>> fetchWeather(String adm4);
  // Future<List<WeatherEntity>> fetchListWeather(String adm4);
}
