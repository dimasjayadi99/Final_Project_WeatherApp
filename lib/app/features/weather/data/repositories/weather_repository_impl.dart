import 'package:pantera/app/features/weather/data/data_source/remote/weather_service.dart';
import 'package:pantera/app/features/weather/data/mapper/weather_mapper.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import 'package:pantera/app/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherService weatherService;
  final WeatherMapper weatherMapper;

  WeatherRepositoryImpl(
      {required this.weatherService, required this.weatherMapper});

  @override
  Future<List<List<WeatherEntity>>> fetchWeather(String adm4) async {
    try {
      final response = await weatherService.fetchCurrentWeather(adm4);
      final dataMapping = weatherMapper.toListWeather(response.data[0].cuaca);
      return dataMapping;
    } catch (e) {
      rethrow;
    }
  }
}
