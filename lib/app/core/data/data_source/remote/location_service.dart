import 'package:dio/dio.dart';
import 'package:pantera/app/config/api_config.dart';
import 'package:pantera/app/core/data/models/kabupaten_model.dart';
import 'package:pantera/app/core/data/models/provinsi_model.dart';
import '../../models/kecamatan_model.dart';
import '../../models/kelurahan_model.dart';

class LocationService {
  final Dio dio;

  LocationService()
      : dio = Dio(
          BaseOptions(
            baseUrl: ApiConfig.locationBaseUrl,
            receiveDataWhenStatusError: true,
          ),
        );

  /// fetch list provinsi
  Future<ProvinsiModel> fetchListProvinsi() async {
    try {
      const provinsiUrl = '/provinces.json';

      final response = await dio.get(provinsiUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProvinsiModel.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch data: ${response.statusCode}");
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  /// fetch list kabupaten
  Future<KabupatenModel> fetchListKabupaten(String provinsiCode) async {
    try {
      final kabupatenUrl = '/regencies/$provinsiCode.json';

      final response = await dio.get(kabupatenUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return KabupatenModel.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch data: ${response.statusCode}");
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  /// fetch list kecamatan
  Future<KecamatanModel> fetchListKecamatan(String kabupatenCode) async {
    try {
      final kecamatanUrl = '/districts/$kabupatenCode.json';

      final response = await dio.get(kecamatanUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return KecamatanModel.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch data: ${response.statusCode}");
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }

  /// fetch list kelurahan
  Future<KelurahanModel> fetchListKelurahan(String kecamatanCode) async {
    try {
      final kelurahanUrl = '/villages/$kecamatanCode.json';

      final response = await dio.get(kelurahanUrl);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return KelurahanModel.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch data: ${response.statusCode}");
      }
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.connectionTimeout) {
        throw Exception("Connection  Timeout Exception");
      }
      throw Exception(ex.message);
    }
  }
}
