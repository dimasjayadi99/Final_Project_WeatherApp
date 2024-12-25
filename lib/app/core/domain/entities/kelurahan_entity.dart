import 'package:freezed_annotation/freezed_annotation.dart';

part 'kelurahan_entity.freezed.dart';

@freezed
class KelurahanEntity with _$KelurahanEntity {
  factory KelurahanEntity({
    required String code,
    required String name,
  }) = _KelurahanEntity;
}
