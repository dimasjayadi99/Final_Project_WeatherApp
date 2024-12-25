import '../entities/kelurahan_entity.dart';
import '../repositories/kelurahan_repository.dart';

class FetchListKelurahan {
  final KelurahanRepository _kelurahanRepository;

  FetchListKelurahan(this._kelurahanRepository);

  Future<List<KelurahanEntity>> fetchListKelurahan(String kecamatanCode) async {
    return await _kelurahanRepository.fetchListKelurahan(kecamatanCode);
  }
}
