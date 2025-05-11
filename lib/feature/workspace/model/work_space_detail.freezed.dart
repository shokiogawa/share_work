// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_space_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkSpaceDetail _$WorkSpaceDetailFromJson(Map<String, dynamic> json) {
  return _WorkSpaceDetail.fromJson(json);
}

/// @nodoc
mixin _$WorkSpaceDetail {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bgm_title')
  String? get bgmTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'bgm_description')
  String? get bgmDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'bgm_id')
  int? get bgmId => throw _privateConstructorUsedError;
  @JsonKey(name: 'music_url')
  String? get musicUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  int? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_by')
  int? get deletedBy => throw _privateConstructorUsedError;

  /// Serializes this WorkSpaceDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkSpaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkSpaceDetailCopyWith<WorkSpaceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkSpaceDetailCopyWith<$Res> {
  factory $WorkSpaceDetailCopyWith(
          WorkSpaceDetail value, $Res Function(WorkSpaceDetail) then) =
      _$WorkSpaceDetailCopyWithImpl<$Res, WorkSpaceDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'bgm_title') String? bgmTitle,
      @JsonKey(name: 'bgm_description') String? bgmDescription,
      @JsonKey(name: 'bgm_id') int? bgmId,
      @JsonKey(name: 'music_url') String? musicUrl,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'updated_by') int? updatedBy,
      @JsonKey(name: 'deleted_by') int? deletedBy});
}

/// @nodoc
class _$WorkSpaceDetailCopyWithImpl<$Res, $Val extends WorkSpaceDetail>
    implements $WorkSpaceDetailCopyWith<$Res> {
  _$WorkSpaceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkSpaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? description = freezed,
    Object? categoryName = freezed,
    Object? bgmTitle = freezed,
    Object? bgmDescription = freezed,
    Object? bgmId = freezed,
    Object? musicUrl = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmTitle: freezed == bgmTitle
          ? _value.bgmTitle
          : bgmTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmDescription: freezed == bgmDescription
          ? _value.bgmDescription
          : bgmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmId: freezed == bgmId
          ? _value.bgmId
          : bgmId // ignore: cast_nullable_to_non_nullable
              as int?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkSpaceDetailImplCopyWith<$Res>
    implements $WorkSpaceDetailCopyWith<$Res> {
  factory _$$WorkSpaceDetailImplCopyWith(_$WorkSpaceDetailImpl value,
          $Res Function(_$WorkSpaceDetailImpl) then) =
      __$$WorkSpaceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'bgm_title') String? bgmTitle,
      @JsonKey(name: 'bgm_description') String? bgmDescription,
      @JsonKey(name: 'bgm_id') int? bgmId,
      @JsonKey(name: 'music_url') String? musicUrl,
      @JsonKey(name: 'is_active') bool isActive,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'created_by') int? createdBy,
      @JsonKey(name: 'updated_by') int? updatedBy,
      @JsonKey(name: 'deleted_by') int? deletedBy});
}

/// @nodoc
class __$$WorkSpaceDetailImplCopyWithImpl<$Res>
    extends _$WorkSpaceDetailCopyWithImpl<$Res, _$WorkSpaceDetailImpl>
    implements _$$WorkSpaceDetailImplCopyWith<$Res> {
  __$$WorkSpaceDetailImplCopyWithImpl(
      _$WorkSpaceDetailImpl _value, $Res Function(_$WorkSpaceDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkSpaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? description = freezed,
    Object? categoryName = freezed,
    Object? bgmTitle = freezed,
    Object? bgmDescription = freezed,
    Object? bgmId = freezed,
    Object? musicUrl = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? deletedBy = freezed,
  }) {
    return _then(_$WorkSpaceDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmTitle: freezed == bgmTitle
          ? _value.bgmTitle
          : bgmTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmDescription: freezed == bgmDescription
          ? _value.bgmDescription
          : bgmDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      bgmId: freezed == bgmId
          ? _value.bgmId
          : bgmId // ignore: cast_nullable_to_non_nullable
              as int?,
      musicUrl: freezed == musicUrl
          ? _value.musicUrl
          : musicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkSpaceDetailImpl implements _WorkSpaceDetail {
  const _$WorkSpaceDetailImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'uid') required this.uid,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'bgm_title') this.bgmTitle,
      @JsonKey(name: 'bgm_description') this.bgmDescription,
      @JsonKey(name: 'bgm_id') this.bgmId,
      @JsonKey(name: 'music_url') this.musicUrl,
      @JsonKey(name: 'is_active') this.isActive = true,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'deleted_by') this.deletedBy});

  factory _$WorkSpaceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkSpaceDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'uid')
  final String uid;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'bgm_title')
  final String? bgmTitle;
  @override
  @JsonKey(name: 'bgm_description')
  final String? bgmDescription;
  @override
  @JsonKey(name: 'bgm_id')
  final int? bgmId;
  @override
  @JsonKey(name: 'music_url')
  final String? musicUrl;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'created_by')
  final int? createdBy;
  @override
  @JsonKey(name: 'updated_by')
  final int? updatedBy;
  @override
  @JsonKey(name: 'deleted_by')
  final int? deletedBy;

  @override
  String toString() {
    return 'WorkSpaceDetail(id: $id, uid: $uid, name: $name, description: $description, categoryName: $categoryName, bgmTitle: $bgmTitle, bgmDescription: $bgmDescription, bgmId: $bgmId, musicUrl: $musicUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, createdBy: $createdBy, updatedBy: $updatedBy, deletedBy: $deletedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkSpaceDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.bgmTitle, bgmTitle) ||
                other.bgmTitle == bgmTitle) &&
            (identical(other.bgmDescription, bgmDescription) ||
                other.bgmDescription == bgmDescription) &&
            (identical(other.bgmId, bgmId) || other.bgmId == bgmId) &&
            (identical(other.musicUrl, musicUrl) ||
                other.musicUrl == musicUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uid,
      name,
      description,
      categoryName,
      bgmTitle,
      bgmDescription,
      bgmId,
      musicUrl,
      isActive,
      createdAt,
      updatedAt,
      deletedAt,
      createdBy,
      updatedBy,
      deletedBy);

  /// Create a copy of WorkSpaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkSpaceDetailImplCopyWith<_$WorkSpaceDetailImpl> get copyWith =>
      __$$WorkSpaceDetailImplCopyWithImpl<_$WorkSpaceDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkSpaceDetailImplToJson(
      this,
    );
  }
}

abstract class _WorkSpaceDetail implements WorkSpaceDetail {
  const factory _WorkSpaceDetail(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'uid') required final String uid,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'category_name') final String? categoryName,
          @JsonKey(name: 'bgm_title') final String? bgmTitle,
          @JsonKey(name: 'bgm_description') final String? bgmDescription,
          @JsonKey(name: 'bgm_id') final int? bgmId,
          @JsonKey(name: 'music_url') final String? musicUrl,
          @JsonKey(name: 'is_active') final bool isActive,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
          @JsonKey(name: 'created_by') final int? createdBy,
          @JsonKey(name: 'updated_by') final int? updatedBy,
          @JsonKey(name: 'deleted_by') final int? deletedBy}) =
      _$WorkSpaceDetailImpl;

  factory _WorkSpaceDetail.fromJson(Map<String, dynamic> json) =
      _$WorkSpaceDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'uid')
  String get uid;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'bgm_title')
  String? get bgmTitle;
  @override
  @JsonKey(name: 'bgm_description')
  String? get bgmDescription;
  @override
  @JsonKey(name: 'bgm_id')
  int? get bgmId;
  @override
  @JsonKey(name: 'music_url')
  String? get musicUrl;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'created_by')
  int? get createdBy;
  @override
  @JsonKey(name: 'updated_by')
  int? get updatedBy;
  @override
  @JsonKey(name: 'deleted_by')
  int? get deletedBy;

  /// Create a copy of WorkSpaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkSpaceDetailImplCopyWith<_$WorkSpaceDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
