import 'package:campus_tracker/src/models/notice/notice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../test/test.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

abstract class IResponseAttribute {
  IResponseAttribute();

  IResponseAttribute.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData.test({
    required String id,
    required Test attributes,
  }) = ResponseDataTest;

  const factory ResponseData.notice({
    required String id,
    required Notice attributes,
  }) = ResponseDataNotice;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}

@freezed
class ResponseDataAttributes
    with _$ResponseDataAttributes
    implements IResponseAttribute {
  @Implements<ITest>()
  const factory ResponseDataAttributes.test({
    required String title,
    required String description,
    required DateTime occurring,
    required DateTime createdAt,
  }) = Test;

  @Implements<INotice>()
  const factory ResponseDataAttributes.notice({
    required String title,
    required String details,
    required DateTime createdAt,
  }) = Notice;

  factory ResponseDataAttributes.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataAttributesFromJson(json);
}
