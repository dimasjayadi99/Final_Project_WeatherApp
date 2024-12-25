import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pantera/app/config/api_config.dart';
import 'package:pantera/app/core/exception/network_exception.dart';
import 'package:pantera/app/features/weather/data/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService()
      : dio = Dio(BaseOptions(
          baseUrl: ApiConfig.weatherBaseUrl,
          receiveDataWhenStatusError: true,
        ));

  /// fetch current weather
  Future<WeatherModel> fetchCurrentWeather(String adm4) async {
    try {
      final response = await dio.get('/prakiraan-cuaca?adm4=$adm4');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        return WeatherModel.fromJson(data);
      } else {
        throw NetworkException(statusCode: response.statusCode!);
      }
    } on SocketException catch (e) {
      throw Exception("No Internet connection: ${e.message}");
    } catch (e) {
      throw Exception("An unexpected error occurred: $e");
    }
  }
}
