import 'package:pantera/app/core/domain/entities/provinsi_entity.dart';
import 'package:pantera/app/core/domain/repositories/provinsi_repository.dart';

class FetchListProvinsi {
  final ProvinsiRepository _provinsiRepository;

  FetchListProvinsi(this._provinsiRepository);

  Future<List<ProvinsiEntity>> fetchListProvinsi() async {
    return await _provinsiRepository.fetchListProvinsi();
  }
}
