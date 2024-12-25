import '../entities/kabupaten_entity.dart';
import '../repositories/kabupaten_repository.dart';

class FetchListKabupaten {
  final KabupatenRepository _kabupatenRepository;

  FetchListKabupaten(this._kabupatenRepository);

  Future<List<KabupatenEntity>> fetchListKabupaten(String provinsiCode) async {
    return await _kabupatenRepository.fetchListKabupaten(provinsiCode);
  }
}
