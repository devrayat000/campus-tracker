// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyResponse _$MyResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'test':
      return _MyResponseTest.fromJson(json);
    case 'notice':
      return _MyResponseNotice.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MyResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MyResponse {
  ResponseMeta get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ResponseDataTest> data, ResponseMeta meta)
        test,
    required TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)
        notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyResponseTest value) test,
    required TResult Function(_MyResponseNotice value) notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyResponseCopyWith<MyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyResponseCopyWith<$Res> {
  factory $MyResponseCopyWith(
          MyResponse value, $Res Function(MyResponse) then) =
      _$MyResponseCopyWithImpl<$Res>;
  $Res call({ResponseMeta meta});

  $ResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$MyResponseCopyWithImpl<$Res> implements $MyResponseCopyWith<$Res> {
  _$MyResponseCopyWithImpl(this._value, this._then);

  final MyResponse _value;
  // ignore: unused_field
  final $Res Function(MyResponse) _then;

  @override
  $Res call({
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResponseMeta,
    ));
  }

  @override
  $ResponseMetaCopyWith<$Res> get meta {
    return $ResponseMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_MyResponseTestCopyWith<$Res>
    implements $MyResponseCopyWith<$Res> {
  factory _$$_MyResponseTestCopyWith(
          _$_MyResponseTest value, $Res Function(_$_MyResponseTest) then) =
      __$$_MyResponseTestCopyWithImpl<$Res>;
  @override
  $Res call({List<ResponseDataTest> data, ResponseMeta meta});

  @override
  $ResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_MyResponseTestCopyWithImpl<$Res>
    extends _$MyResponseCopyWithImpl<$Res>
    implements _$$_MyResponseTestCopyWith<$Res> {
  __$$_MyResponseTestCopyWithImpl(
      _$_MyResponseTest _value, $Res Function(_$_MyResponseTest) _then)
      : super(_value, (v) => _then(v as _$_MyResponseTest));

  @override
  _$_MyResponseTest get _value => super._value as _$_MyResponseTest;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_MyResponseTest(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataTest>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResponseMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyResponseTest implements _MyResponseTest {
  const _$_MyResponseTest(
      {required final List<ResponseDataTest> data,
      required this.meta,
      final String? $type})
      : _data = data,
        $type = $type ?? 'test';

  factory _$_MyResponseTest.fromJson(Map<String, dynamic> json) =>
      _$$_MyResponseTestFromJson(json);

  final List<ResponseDataTest> _data;
  @override
  List<ResponseDataTest> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final ResponseMeta meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyResponse.test(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyResponseTest &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_MyResponseTestCopyWith<_$_MyResponseTest> get copyWith =>
      __$$_MyResponseTestCopyWithImpl<_$_MyResponseTest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ResponseDataTest> data, ResponseMeta meta)
        test,
    required TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)
        notice,
  }) {
    return test(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
  }) {
    return test?.call(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(data, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyResponseTest value) test,
    required TResult Function(_MyResponseNotice value) notice,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyResponseTestToJson(this);
  }
}

abstract class _MyResponseTest implements MyResponse {
  const factory _MyResponseTest(
      {required final List<ResponseDataTest> data,
      required final ResponseMeta meta}) = _$_MyResponseTest;

  factory _MyResponseTest.fromJson(Map<String, dynamic> json) =
      _$_MyResponseTest.fromJson;

  List<ResponseDataTest> get data => throw _privateConstructorUsedError;
  @override
  ResponseMeta get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyResponseTestCopyWith<_$_MyResponseTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MyResponseNoticeCopyWith<$Res>
    implements $MyResponseCopyWith<$Res> {
  factory _$$_MyResponseNoticeCopyWith(
          _$_MyResponseNotice value, $Res Function(_$_MyResponseNotice) then) =
      __$$_MyResponseNoticeCopyWithImpl<$Res>;
  @override
  $Res call({List<ResponseDataNotice> data, ResponseMeta meta});

  @override
  $ResponseMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_MyResponseNoticeCopyWithImpl<$Res>
    extends _$MyResponseCopyWithImpl<$Res>
    implements _$$_MyResponseNoticeCopyWith<$Res> {
  __$$_MyResponseNoticeCopyWithImpl(
      _$_MyResponseNotice _value, $Res Function(_$_MyResponseNotice) _then)
      : super(_value, (v) => _then(v as _$_MyResponseNotice));

  @override
  _$_MyResponseNotice get _value => super._value as _$_MyResponseNotice;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_MyResponseNotice(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataNotice>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ResponseMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyResponseNotice implements _MyResponseNotice {
  const _$_MyResponseNotice(
      {required final List<ResponseDataNotice> data,
      required this.meta,
      final String? $type})
      : _data = data,
        $type = $type ?? 'notice';

  factory _$_MyResponseNotice.fromJson(Map<String, dynamic> json) =>
      _$$_MyResponseNoticeFromJson(json);

  final List<ResponseDataNotice> _data;
  @override
  List<ResponseDataNotice> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final ResponseMeta meta;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyResponse.notice(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyResponseNotice &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_MyResponseNoticeCopyWith<_$_MyResponseNotice> get copyWith =>
      __$$_MyResponseNoticeCopyWithImpl<_$_MyResponseNotice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ResponseDataTest> data, ResponseMeta meta)
        test,
    required TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)
        notice,
  }) {
    return notice(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
  }) {
    return notice?.call(data, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ResponseDataTest> data, ResponseMeta meta)? test,
    TResult Function(List<ResponseDataNotice> data, ResponseMeta meta)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(data, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyResponseTest value) test,
    required TResult Function(_MyResponseNotice value) notice,
  }) {
    return notice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
  }) {
    return notice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyResponseTest value)? test,
    TResult Function(_MyResponseNotice value)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyResponseNoticeToJson(this);
  }
}

abstract class _MyResponseNotice implements MyResponse {
  const factory _MyResponseNotice(
      {required final List<ResponseDataNotice> data,
      required final ResponseMeta meta}) = _$_MyResponseNotice;

  factory _MyResponseNotice.fromJson(Map<String, dynamic> json) =
      _$_MyResponseNotice.fromJson;

  List<ResponseDataNotice> get data => throw _privateConstructorUsedError;
  @override
  ResponseMeta get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyResponseNoticeCopyWith<_$_MyResponseNotice> get copyWith =>
      throw _privateConstructorUsedError;
}
