import 'package:pantera/app/features/weather/data/models/weather_model.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';

class WeatherMapper {
  WeatherEntity toWeather(Cuaca data) {
    try {
      return WeatherEntity(
          temperature: data.t,
          weatherDesc: data.weatherDesc,
          weatherDescEn: data.weatherDescEn,
          windSpeed: data.ws,
          windDirection: data.wd,
          humidity: data.hu,
          localDatetime: data.localDatetime);
    } catch (e) {
      throw Exception('Failed to mapping : $e');
    }
  }

  List<List<WeatherEntity>> toListWeather(List<List<Cuaca>> listData) {
    final List<List<WeatherEntity>> listWeather = [];

    for (var sublist in listData) {
      try {
        final mappedSublist = sublist.map(toWeather).toList();
        listWeather.add(mappedSublist);
      } catch (e) {
        throw Exception('Failed to map list: $e');
      }
    }

    return listWeather;
  }
}
