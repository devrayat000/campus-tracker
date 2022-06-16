// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeRaw _$$_NoticeRawFromJson(Map<String, dynamic> json) => _$_NoticeRaw(
      id: json['id'] as int,
      title: json['title'] as String,
      details: json['details'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_NoticeRawToJson(_$_NoticeRaw instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'createdAt': instance.createdAt.toIso8601String(),
    };
