import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String get locationBaseUrl => dotenv.env['LOCATION_BASE_URL'] ?? '';
  static String get weatherBaseUrl => dotenv.env['WEATHER_BASE_URL'] ?? '';
  static String get gempaBaseUrl => dotenv.env['GEMPA_BASE_URL'] ?? '';
}
