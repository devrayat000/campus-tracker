// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyResponseTest _$$MyResponseTestFromJson(Map<String, dynamic> json) =>
    _$MyResponseTest(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseDataTest.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyResponseTestToJson(_$MyResponseTest instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'runtimeType': instance.$type,
    };

_$MyResponseNotice _$$MyResponseNoticeFromJson(Map<String, dynamic> json) =>
    _$MyResponseNotice(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseDataNotice.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyResponseNoticeToJson(_$MyResponseNotice instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'runtimeType': instance.$type,
    };
