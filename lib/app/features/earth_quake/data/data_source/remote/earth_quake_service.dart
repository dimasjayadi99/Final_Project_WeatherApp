import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pantera/app/config/api_config.dart';
import 'package:pantera/app/features/earth_quake/data/models/earth_quake_model.dart';
import '../../../../../core/exception/network_exception.dart';

class EarthQuakeService {
  final Dio dio;

  EarthQuakeService()
      : dio = Dio(BaseOptions(
            baseUrl: ApiConfig.gempaBaseUrl, receiveDataWhenStatusError: true));

  /// fetch current earthquake
  Future<EarthQuakeModel> fetchCurrentEarthQuake() async {
    try {
      final response = await dio.get('/TEWS/autogempa.json');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        return EarthQuakeModel.fromJson(data);
      } else {
        throw NetworkException(statusCode: response.statusCode!);
      }
    } on SocketException catch (e) {
      throw Exception("No Internet connection: ${e.message}");
    } catch (e) {
      throw Exception("An unexpected error occurred: $e");
    }
  }

  /// fetch list earthquake
  Future<EarthQuakeModel> fetchListEarthQuake() async {
    try {
      final response = await dio.get('/TEWS/gempaterkini.json');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        return EarthQuakeModel.fromJson(data);
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
