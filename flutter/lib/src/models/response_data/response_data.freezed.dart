// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'test':
      return ResponseDataTest.fromJson(json);
    case 'notice':
      return ResponseDataNotice.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ResponseData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ResponseData {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Test attributes) test,
    required TResult Function(String id, Notice attributes) notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResponseDataTest value) test,
    required TResult Function(ResponseDataNotice value) notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res> implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  final ResponseData _value;
  // ignore: unused_field
  final $Res Function(ResponseData) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ResponseDataTestCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataTestCopyWith(
          _$ResponseDataTest value, $Res Function(_$ResponseDataTest) then) =
      __$$ResponseDataTestCopyWithImpl<$Res>;
  @override
  $Res call({String id, Test attributes});
}

/// @nodoc
class __$$ResponseDataTestCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res>
    implements _$$ResponseDataTestCopyWith<$Res> {
  __$$ResponseDataTestCopyWithImpl(
      _$ResponseDataTest _value, $Res Function(_$ResponseDataTest) _then)
      : super(_value, (v) => _then(v as _$ResponseDataTest));

  @override
  _$ResponseDataTest get _value => super._value as _$ResponseDataTest;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$ResponseDataTest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Test,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataTest implements ResponseDataTest {
  const _$ResponseDataTest(
      {required this.id, required this.attributes, final String? $type})
      : $type = $type ?? 'test';

  factory _$ResponseDataTest.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataTestFromJson(json);

  @override
  final String id;
  @override
  final Test attributes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseData.test(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataTest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$$ResponseDataTestCopyWith<_$ResponseDataTest> get copyWith =>
      __$$ResponseDataTestCopyWithImpl<_$ResponseDataTest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Test attributes) test,
    required TResult Function(String id, Notice attributes) notice,
  }) {
    return test(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
  }) {
    return test?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResponseDataTest value) test,
    required TResult Function(ResponseDataNotice value) notice,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataTestToJson(this);
  }
}

abstract class ResponseDataTest implements ResponseData {
  const factory ResponseDataTest(
      {required final String id,
      required final Test attributes}) = _$ResponseDataTest;

  factory ResponseDataTest.fromJson(Map<String, dynamic> json) =
      _$ResponseDataTest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  Test get attributes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataTestCopyWith<_$ResponseDataTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResponseDataNoticeCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataNoticeCopyWith(_$ResponseDataNotice value,
          $Res Function(_$ResponseDataNotice) then) =
      __$$ResponseDataNoticeCopyWithImpl<$Res>;
  @override
  $Res call({String id, Notice attributes});
}

/// @nodoc
class __$$ResponseDataNoticeCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res>
    implements _$$ResponseDataNoticeCopyWith<$Res> {
  __$$ResponseDataNoticeCopyWithImpl(
      _$ResponseDataNotice _value, $Res Function(_$ResponseDataNotice) _then)
      : super(_value, (v) => _then(v as _$ResponseDataNotice));

  @override
  _$ResponseDataNotice get _value => super._value as _$ResponseDataNotice;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$ResponseDataNotice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Notice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataNotice implements ResponseDataNotice {
  const _$ResponseDataNotice(
      {required this.id, required this.attributes, final String? $type})
      : $type = $type ?? 'notice';

  factory _$ResponseDataNotice.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataNoticeFromJson(json);

  @override
  final String id;
  @override
  final Notice attributes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseData.notice(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataNotice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$$ResponseDataNoticeCopyWith<_$ResponseDataNotice> get copyWith =>
      __$$ResponseDataNoticeCopyWithImpl<_$ResponseDataNotice>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Test attributes) test,
    required TResult Function(String id, Notice attributes) notice,
  }) {
    return notice(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
  }) {
    return notice?.call(id, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Test attributes)? test,
    TResult Function(String id, Notice attributes)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(id, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResponseDataTest value) test,
    required TResult Function(ResponseDataNotice value) notice,
  }) {
    return notice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
  }) {
    return notice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResponseDataTest value)? test,
    TResult Function(ResponseDataNotice value)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataNoticeToJson(this);
  }
}

abstract class ResponseDataNotice implements ResponseData {
  const factory ResponseDataNotice(
      {required final String id,
      required final Notice attributes}) = _$ResponseDataNotice;

  factory ResponseDataNotice.fromJson(Map<String, dynamic> json) =
      _$ResponseDataNotice.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  Notice get attributes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataNoticeCopyWith<_$ResponseDataNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseDataAttributes _$ResponseDataAttributesFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'test':
      return Test.fromJson(json);
    case 'notice':
      return Notice.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ResponseDataAttributes',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ResponseDataAttributes {
  String get title => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description,
            DateTime occurring, DateTime createdAt)
        test,
    required TResult Function(String title, String details, DateTime createdAt)
        notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Test value) test,
    required TResult Function(Notice value) notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataAttributesCopyWith<ResponseDataAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataAttributesCopyWith<$Res> {
  factory $ResponseDataAttributesCopyWith(ResponseDataAttributes value,
          $Res Function(ResponseDataAttributes) then) =
      _$ResponseDataAttributesCopyWithImpl<$Res>;
  $Res call({String title, DateTime createdAt});
}

/// @nodoc
class _$ResponseDataAttributesCopyWithImpl<$Res>
    implements $ResponseDataAttributesCopyWith<$Res> {
  _$ResponseDataAttributesCopyWithImpl(this._value, this._then);

  final ResponseDataAttributes _value;
  // ignore: unused_field
  final $Res Function(ResponseDataAttributes) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$TestCopyWith<$Res>
    implements $ResponseDataAttributesCopyWith<$Res> {
  factory _$$TestCopyWith(_$Test value, $Res Function(_$Test) then) =
      __$$TestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      DateTime occurring,
      DateTime createdAt});
}

/// @nodoc
class __$$TestCopyWithImpl<$Res>
    extends _$ResponseDataAttributesCopyWithImpl<$Res>
    implements _$$TestCopyWith<$Res> {
  __$$TestCopyWithImpl(_$Test _value, $Res Function(_$Test) _then)
      : super(_value, (v) => _then(v as _$Test));

  @override
  _$Test get _value => super._value as _$Test;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? occurring = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$Test(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      occurring: occurring == freezed
          ? _value.occurring
          : occurring // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Test implements Test {
  const _$Test(
      {required this.title,
      required this.description,
      required this.occurring,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'test';

  factory _$Test.fromJson(Map<String, dynamic> json) => _$$TestFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime occurring;
  @override
  final DateTime createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseDataAttributes.test(title: $title, description: $description, occurring: $occurring, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Test &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.occurring, occurring) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(occurring),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$TestCopyWith<_$Test> get copyWith =>
      __$$TestCopyWithImpl<_$Test>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description,
            DateTime occurring, DateTime createdAt)
        test,
    required TResult Function(String title, String details, DateTime createdAt)
        notice,
  }) {
    return test(title, description, occurring, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
  }) {
    return test?.call(title, description, occurring, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(title, description, occurring, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Test value) test,
    required TResult Function(Notice value) notice,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestToJson(this);
  }
}

abstract class Test implements ResponseDataAttributes, ITest {
  const factory Test(
      {required final String title,
      required final String description,
      required final DateTime occurring,
      required final DateTime createdAt}) = _$Test;

  factory Test.fromJson(Map<String, dynamic> json) = _$Test.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get occurring => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$TestCopyWith<_$Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoticeCopyWith<$Res>
    implements $ResponseDataAttributesCopyWith<$Res> {
  factory _$$NoticeCopyWith(_$Notice value, $Res Function(_$Notice) then) =
      __$$NoticeCopyWithImpl<$Res>;
  @override
  $Res call({String title, String details, DateTime createdAt});
}

/// @nodoc
class __$$NoticeCopyWithImpl<$Res>
    extends _$ResponseDataAttributesCopyWithImpl<$Res>
    implements _$$NoticeCopyWith<$Res> {
  __$$NoticeCopyWithImpl(_$Notice _value, $Res Function(_$Notice) _then)
      : super(_value, (v) => _then(v as _$Notice));

  @override
  _$Notice get _value => super._value as _$Notice;

  @override
  $Res call({
    Object? title = freezed,
    Object? details = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$Notice(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Notice implements Notice {
  const _$Notice(
      {required this.title,
      required this.details,
      required this.createdAt,
      final String? $type})
      : $type = $type ?? 'notice';

  factory _$Notice.fromJson(Map<String, dynamic> json) =>
      _$$NoticeFromJson(json);

  @override
  final String title;
  @override
  final String details;
  @override
  final DateTime createdAt;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ResponseDataAttributes.notice(title: $title, details: $details, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Notice &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$NoticeCopyWith<_$Notice> get copyWith =>
      __$$NoticeCopyWithImpl<_$Notice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description,
            DateTime occurring, DateTime createdAt)
        test,
    required TResult Function(String title, String details, DateTime createdAt)
        notice,
  }) {
    return notice(title, details, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
  }) {
    return notice?.call(title, details, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, DateTime occurring,
            DateTime createdAt)?
        test,
    TResult Function(String title, String details, DateTime createdAt)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(title, details, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Test value) test,
    required TResult Function(Notice value) notice,
  }) {
    return notice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
  }) {
    return notice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Test value)? test,
    TResult Function(Notice value)? notice,
    required TResult orElse(),
  }) {
    if (notice != null) {
      return notice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NoticeToJson(this);
  }
}

abstract class Notice implements ResponseDataAttributes, INotice {
  const factory Notice(
      {required final String title,
      required final String details,
      required final DateTime createdAt}) = _$Notice;

  factory Notice.fromJson(Map<String, dynamic> json) = _$Notice.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NoticeCopyWith<_$Notice> get copyWith =>
      throw _privateConstructorUsedError;
}
