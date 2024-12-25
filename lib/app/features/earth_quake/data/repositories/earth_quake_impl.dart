import 'package:pantera/app/features/earth_quake/data/data_source/remote/earth_quake_service.dart';
import 'package:pantera/app/features/earth_quake/data/mapper/earth_quake_mapper.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/domain/repositories/earth_quake_repository.dart';

class EarthQuakeImpl extends EarthQuakeRepository {
  final EarthQuakeService earthQuakeService;
  final EarthQuakeMapper earthQuakeMapper;

  EarthQuakeImpl(
      {required this.earthQuakeService, required this.earthQuakeMapper});

  @override
  Future<EarthQuakeEntity> fetchEarthQuake() async {
    try {
      final response = await earthQuakeService.fetchCurrentEarthQuake();
      final mapper =
          earthQuakeMapper.toEarthQuake(response.infogempa.gempa.first);
      return mapper;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<EarthQuakeEntity>> fetchListEarthQuake() async {
    try {
      final response = await earthQuakeService.fetchListEarthQuake();

      final mapper =
          earthQuakeMapper.toListEarthQuake(response.infogempa.gempa);
      return mapper;
    } catch (e) {
      rethrow;
    }
  }
}
