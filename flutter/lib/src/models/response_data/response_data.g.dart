// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataTest _$$ResponseDataTestFromJson(Map<String, dynamic> json) =>
    _$ResponseDataTest(
      id: json['id'] as int,
      attributes: Test.fromJson(json['attributes'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseDataTestToJson(_$ResponseDataTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'runtimeType': instance.$type,
    };

_$ResponseDataNotice _$$ResponseDataNoticeFromJson(Map<String, dynamic> json) =>
    _$ResponseDataNotice(
      id: json['id'] as int,
      attributes: Notice.fromJson(json['attributes'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponseDataNoticeToJson(
        _$ResponseDataNotice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'runtimeType': instance.$type,
    };

_$Test _$$TestFromJson(Map<String, dynamic> json) => _$Test(
      title: json['title'] as String,
      description: json['description'] as String,
      occurring: DateTime.parse(json['occurring'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TestToJson(_$Test instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'occurring': instance.occurring.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$Notice _$$NoticeFromJson(Map<String, dynamic> json) => _$Notice(
      title: json['title'] as String,
      details: json['details'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeToJson(_$Notice instance) => <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'createdAt': instance.createdAt.toIso8601String(),
      'runtimeType': instance.$type,
    };
