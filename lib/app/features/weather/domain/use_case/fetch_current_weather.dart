import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import 'package:pantera/app/features/weather/domain/repositories/weather_repository.dart';

class FetchCurrentWeather {
  final WeatherRepository weatherRepository;

  FetchCurrentWeather({required this.weatherRepository});

  Future<List<List<WeatherEntity>>> fetchCurrentWeather(String adm4) async {
    return await weatherRepository.fetchWeather(adm4);
  }
}
