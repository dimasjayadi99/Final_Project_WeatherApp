import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/domain/repositories/earth_quake_repository.dart';

class FetchListEarthQuake {
  final EarthQuakeRepository earthQuakeRepository;

  FetchListEarthQuake(this.earthQuakeRepository);

  Future<List<EarthQuakeEntity>> listEarthQuake() async {
    return earthQuakeRepository.fetchListEarthQuake();
  }
}
