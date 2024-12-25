import 'package:pantera/app/core/data/data_source/remote/location_service.dart';
import 'package:pantera/app/core/data/mapper/provinsi_mapper.dart';
import 'package:pantera/app/core/domain/entities/provinsi_entity.dart';
import 'package:pantera/app/core/domain/repositories/provinsi_repository.dart';

class ProvinsiImpl extends ProvinsiRepository {
  final LocationService locationService;
  final ProvinsiMapper provinsiMapper;

  ProvinsiImpl({required this.locationService, required this.provinsiMapper});

  @override
  Future<List<ProvinsiEntity>> fetchListProvinsi() async {
    try {
      final response = await locationService.fetchListProvinsi();
      final data = provinsiMapper.toListProvinsi(response.data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
