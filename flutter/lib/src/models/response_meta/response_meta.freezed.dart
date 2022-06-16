// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseMeta _$ResponseMetaFromJson(Map<String, dynamic> json) {
  return _ResponseMeta.fromJson(json);
}

/// @nodoc
mixin _$ResponseMeta {
  ResponseMetaPagination get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMetaCopyWith<ResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMetaCopyWith<$Res> {
  factory $ResponseMetaCopyWith(
          ResponseMeta value, $Res Function(ResponseMeta) then) =
      _$ResponseMetaCopyWithImpl<$Res>;
  $Res call({ResponseMetaPagination pagination});

  $ResponseMetaPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$ResponseMetaCopyWithImpl<$Res> implements $ResponseMetaCopyWith<$Res> {
  _$ResponseMetaCopyWithImpl(this._value, this._then);

  final ResponseMeta _value;
  // ignore: unused_field
  final $Res Function(ResponseMeta) _then;

  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ResponseMetaPagination,
    ));
  }

  @override
  $ResponseMetaPaginationCopyWith<$Res> get pagination {
    return $ResponseMetaPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResponseMetaCopyWith<$Res>
    implements $ResponseMetaCopyWith<$Res> {
  factory _$$_ResponseMetaCopyWith(
          _$_ResponseMeta value, $Res Function(_$_ResponseMeta) then) =
      __$$_ResponseMetaCopyWithImpl<$Res>;
  @override
  $Res call({ResponseMetaPagination pagination});

  @override
  $ResponseMetaPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_ResponseMetaCopyWithImpl<$Res>
    extends _$ResponseMetaCopyWithImpl<$Res>
    implements _$$_ResponseMetaCopyWith<$Res> {
  __$$_ResponseMetaCopyWithImpl(
      _$_ResponseMeta _value, $Res Function(_$_ResponseMeta) _then)
      : super(_value, (v) => _then(v as _$_ResponseMeta));

  @override
  _$_ResponseMeta get _value => super._value as _$_ResponseMeta;

  @override
  $Res call({
    Object? pagination = freezed,
  }) {
    return _then(_$_ResponseMeta(
      pagination: pagination == freezed
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as ResponseMetaPagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseMeta with DiagnosticableTreeMixin implements _ResponseMeta {
  const _$_ResponseMeta({required this.pagination});

  factory _$_ResponseMeta.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseMetaFromJson(json);

  @override
  final ResponseMetaPagination pagination;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseMeta(pagination: $pagination)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseMeta'))
      ..add(DiagnosticsProperty('pagination', pagination));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseMeta &&
            const DeepCollectionEquality()
                .equals(other.pagination, pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pagination));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseMetaCopyWith<_$_ResponseMeta> get copyWith =>
      __$$_ResponseMetaCopyWithImpl<_$_ResponseMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseMetaToJson(this);
  }
}

abstract class _ResponseMeta implements ResponseMeta {
  const factory _ResponseMeta(
      {required final ResponseMetaPagination pagination}) = _$_ResponseMeta;

  factory _ResponseMeta.fromJson(Map<String, dynamic> json) =
      _$_ResponseMeta.fromJson;

  @override
  ResponseMetaPagination get pagination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseMetaCopyWith<_$_ResponseMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseMetaPagination _$ResponseMetaPaginationFromJson(
    Map<String, dynamic> json) {
  return _ResponseMetaPagination.fromJson(json);
}

/// @nodoc
mixin _$ResponseMetaPagination {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMetaPaginationCopyWith<ResponseMetaPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMetaPaginationCopyWith<$Res> {
  factory $ResponseMetaPaginationCopyWith(ResponseMetaPagination value,
          $Res Function(ResponseMetaPagination) then) =
      _$ResponseMetaPaginationCopyWithImpl<$Res>;
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class _$ResponseMetaPaginationCopyWithImpl<$Res>
    implements $ResponseMetaPaginationCopyWith<$Res> {
  _$ResponseMetaPaginationCopyWithImpl(this._value, this._then);

  final ResponseMetaPagination _value;
  // ignore: unused_field
  final $Res Function(ResponseMetaPagination) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? pageCount = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ResponseMetaPaginationCopyWith<$Res>
    implements $ResponseMetaPaginationCopyWith<$Res> {
  factory _$$_ResponseMetaPaginationCopyWith(_$_ResponseMetaPagination value,
          $Res Function(_$_ResponseMetaPagination) then) =
      __$$_ResponseMetaPaginationCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class __$$_ResponseMetaPaginationCopyWithImpl<$Res>
    extends _$ResponseMetaPaginationCopyWithImpl<$Res>
    implements _$$_ResponseMetaPaginationCopyWith<$Res> {
  __$$_ResponseMetaPaginationCopyWithImpl(_$_ResponseMetaPagination _value,
      $Res Function(_$_ResponseMetaPagination) _then)
      : super(_value, (v) => _then(v as _$_ResponseMetaPagination));

  @override
  _$_ResponseMetaPagination get _value =>
      super._value as _$_ResponseMetaPagination;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? pageCount = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ResponseMetaPagination(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseMetaPagination
    with DiagnosticableTreeMixin
    implements _ResponseMetaPagination {
  const _$_ResponseMetaPagination(
      {required this.page,
      required this.pageSize,
      required this.pageCount,
      required this.total});

  factory _$_ResponseMetaPagination.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseMetaPaginationFromJson(json);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int pageCount;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseMetaPagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseMetaPagination'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('pageCount', pageCount))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseMetaPagination &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(pageCount),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_ResponseMetaPaginationCopyWith<_$_ResponseMetaPagination> get copyWith =>
      __$$_ResponseMetaPaginationCopyWithImpl<_$_ResponseMetaPagination>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseMetaPaginationToJson(this);
  }
}

abstract class _ResponseMetaPagination implements ResponseMetaPagination {
  const factory _ResponseMetaPagination(
      {required final int page,
      required final int pageSize,
      required final int pageCount,
      required final int total}) = _$_ResponseMetaPagination;

  factory _ResponseMetaPagination.fromJson(Map<String, dynamic> json) =
      _$_ResponseMetaPagination.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get pageSize => throw _privateConstructorUsedError;
  @override
  int get pageCount => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseMetaPaginationCopyWith<_$_ResponseMetaPagination> get copyWith =>
      throw _privateConstructorUsedError;
}
