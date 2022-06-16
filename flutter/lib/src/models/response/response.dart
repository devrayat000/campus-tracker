import 'package:campus_tracker/src/models/response_data/response_data.dart';
import 'package:campus_tracker/src/models/response_meta/response_meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class MyResponse with _$MyResponse {
  const factory MyResponse.test({
    required List<ResponseDataTest> data,
    required ResponseMeta meta,
  }) = _MyResponseTest;

  const factory MyResponse.notice({
    required List<ResponseDataNotice> data,
    required ResponseMeta meta,
  }) = _MyResponseNotice;

  factory MyResponse.fromJson(Map<String, dynamic> json) =>
      _$MyResponseFromJson(json);
}
