import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response_meta.freezed.dart';
part 'response_meta.g.dart';

@freezed
class ResponseMeta with _$ResponseMeta {
  const factory ResponseMeta({
    required ResponseMetaPagination pagination,
  }) = _ResponseMeta;

  factory ResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$ResponseMetaFromJson(json);
}

@freezed
class ResponseMetaPagination with _$ResponseMetaPagination {
  const factory ResponseMetaPagination({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _ResponseMetaPagination;

  factory ResponseMetaPagination.fromJson(Map<String, dynamic> json) =>
      _$ResponseMetaPaginationFromJson(json);
}
