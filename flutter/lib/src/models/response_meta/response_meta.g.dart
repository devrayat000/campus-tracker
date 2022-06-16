// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseMeta _$$_ResponseMetaFromJson(Map<String, dynamic> json) =>
    _$_ResponseMeta(
      pagination: ResponseMetaPagination.fromJson(
          json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseMetaToJson(_$_ResponseMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

_$_ResponseMetaPagination _$$_ResponseMetaPaginationFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseMetaPagination(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      pageCount: json['pageCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_ResponseMetaPaginationToJson(
        _$_ResponseMetaPagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
