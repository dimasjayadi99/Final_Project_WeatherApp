import 'package:pantera/app/core/data/data_source/remote/location_service.dart';

import '../../domain/entities/kecamatan_entity.dart';
import '../../domain/repositories/kecamatan_repository.dart';
import '../mapper/kecamatan_mapper.dart';

class KecamatanImpl extends KecamatanRepository {
  final LocationService locationService;
  final KecamatanMapper kecamatanMapper;

  KecamatanImpl({required this.locationService, required this.kecamatanMapper});

  @override
  Future<List<KecamatanEntity>> fetchListKecamatan(String kabupatenCode) async {
    try {
      final response = await locationService.fetchListKecamatan(kabupatenCode);
      final data = kecamatanMapper.toListKecamatan(response.data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
