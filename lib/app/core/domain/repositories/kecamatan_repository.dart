import '../entities/kecamatan_entity.dart';

abstract class KecamatanRepository {
  Future<List<KecamatanEntity>> fetchListKecamatan(String kabupatenCode);
}
