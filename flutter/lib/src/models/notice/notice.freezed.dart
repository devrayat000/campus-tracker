// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeRaw _$NoticeRawFromJson(Map<String, dynamic> json) {
  return _NoticeRaw.fromJson(json);
}

/// @nodoc
mixin _$NoticeRaw {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeRawCopyWith<NoticeRaw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeRawCopyWith<$Res> {
  factory $NoticeRawCopyWith(NoticeRaw value, $Res Function(NoticeRaw) then) =
      _$NoticeRawCopyWithImpl<$Res>;
  $Res call({int id, String title, String details, DateTime createdAt});
}

/// @nodoc
class _$NoticeRawCopyWithImpl<$Res> implements $NoticeRawCopyWith<$Res> {
  _$NoticeRawCopyWithImpl(this._value, this._then);

  final NoticeRaw _value;
  // ignore: unused_field
  final $Res Function(NoticeRaw) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_NoticeRawCopyWith<$Res> implements $NoticeRawCopyWith<$Res> {
  factory _$$_NoticeRawCopyWith(
          _$_NoticeRaw value, $Res Function(_$_NoticeRaw) then) =
      __$$_NoticeRawCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String details, DateTime createdAt});
}

/// @nodoc
class __$$_NoticeRawCopyWithImpl<$Res> extends _$NoticeRawCopyWithImpl<$Res>
    implements _$$_NoticeRawCopyWith<$Res> {
  __$$_NoticeRawCopyWithImpl(
      _$_NoticeRaw _value, $Res Function(_$_NoticeRaw) _then)
      : super(_value, (v) => _then(v as _$_NoticeRaw));

  @override
  _$_NoticeRaw get _value => super._value as _$_NoticeRaw;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? details = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_NoticeRaw(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_NoticeRaw implements _NoticeRaw {
  const _$_NoticeRaw(
      {required this.id,
      required this.title,
      required this.details,
      required this.createdAt});

  factory _$_NoticeRaw.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeRawFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String details;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'NoticeRaw(id: $id, title: $title, details: $details, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeRaw &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeRawCopyWith<_$_NoticeRaw> get copyWith =>
      __$$_NoticeRawCopyWithImpl<_$_NoticeRaw>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeRawToJson(this);
  }
}

abstract class _NoticeRaw implements NoticeRaw {
  const factory _NoticeRaw(
      {required final int id,
      required final String title,
      required final String details,
      required final DateTime createdAt}) = _$_NoticeRaw;

  factory _NoticeRaw.fromJson(Map<String, dynamic> json) =
      _$_NoticeRaw.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get details => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeRawCopyWith<_$_NoticeRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
