import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

abstract class INotice {
  String get title;
  String get details;
  DateTime get createdAt;
}

@freezed
class NoticeRaw with _$NoticeRaw {
  const factory NoticeRaw({
    required int id,
    required String title,
    required String details,
    required DateTime createdAt,
  }) = _NoticeRaw;

  factory NoticeRaw.fromJson(Map<String, dynamic> json) =>
      _$NoticeRawFromJson(json);
}
