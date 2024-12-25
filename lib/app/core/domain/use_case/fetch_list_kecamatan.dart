import '../entities/kecamatan_entity.dart';
import '../repositories/kecamatan_repository.dart';

class FetchListKecamatan {
  final KecamatanRepository _kecamatanRepository;

  FetchListKecamatan(this._kecamatanRepository);

  Future<List<KecamatanEntity>> fetchListKecamatan(String kabupatenCode) async {
    return await _kecamatanRepository.fetchListKecamatan(kabupatenCode);
  }
}
