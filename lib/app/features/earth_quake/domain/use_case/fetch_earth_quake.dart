import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/domain/repositories/earth_quake_repository.dart';

class FetchEarthQuake {
  final EarthQuakeRepository earthQuakeRepository;

  FetchEarthQuake(this.earthQuakeRepository);

  Future<EarthQuakeEntity> currentEarthQuake() async {
    return earthQuakeRepository.fetchEarthQuake();
  }
}
