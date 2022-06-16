// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyResponseTest _$$_MyResponseTestFromJson(Map<String, dynamic> json) =>
    _$_MyResponseTest(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseDataTest.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MyResponseTestToJson(_$_MyResponseTest instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'runtimeType': instance.$type,
    };

_$_MyResponseNotice _$$_MyResponseNoticeFromJson(Map<String, dynamic> json) =>
    _$_MyResponseNotice(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseDataNotice.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MyResponseNoticeToJson(_$_MyResponseNotice instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'runtimeType': instance.$type,
    };
