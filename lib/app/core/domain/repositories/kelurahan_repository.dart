import '../entities/kelurahan_entity.dart';

abstract class KelurahanRepository {
  Future<List<KelurahanEntity>> fetchListKelurahan(String kecamatanCode);
}
