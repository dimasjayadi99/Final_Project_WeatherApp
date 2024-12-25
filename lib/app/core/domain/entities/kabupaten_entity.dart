import 'package:freezed_annotation/freezed_annotation.dart';

part 'kabupaten_entity.freezed.dart';

@freezed
class KabupatenEntity with _$KabupatenEntity {
  factory KabupatenEntity({
    required String code,
    required String name,
  }) = _KabupatenEntity;
}
