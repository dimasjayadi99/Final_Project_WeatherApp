import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';

abstract class EarthQuakeRepository {
  Future<EarthQuakeEntity> fetchEarthQuake();
  Future<List<EarthQuakeEntity>> fetchListEarthQuake();
}
