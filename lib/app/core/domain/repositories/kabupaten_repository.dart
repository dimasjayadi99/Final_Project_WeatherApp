import '../entities/kabupaten_entity.dart';

abstract class KabupatenRepository {
  Future<List<KabupatenEntity>> fetchListKabupaten(String provinsiCode);
}
