import 'package:pantera/app/core/data/data_source/remote/location_service.dart';

import '../../domain/entities/kabupaten_entity.dart';
import '../../domain/repositories/kabupaten_repository.dart';
import '../mapper/kabupaten_mapper.dart';

class KabupatenImpl extends KabupatenRepository {
  final LocationService locationService;
  final KabupatenMapper kabupatenMapper;

  KabupatenImpl({required this.locationService, required this.kabupatenMapper});

  @override
  Future<List<KabupatenEntity>> fetchListKabupaten(String provinsiCode) async {
    try {
      final response = await locationService.fetchListKabupaten(provinsiCode);
      final data = kabupatenMapper.toListKabupaten(response.data);
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
