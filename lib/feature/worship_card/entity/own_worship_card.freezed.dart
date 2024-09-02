// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'own_worship_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OwnWorshipCard _$OwnWorshipCardFromJson(Map<String, dynamic> json) {
  return _OwnWorshipCard.fromJson(json);
}

/// @nodoc
mixin _$OwnWorshipCard {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_worship_card')
  int? get idWorshipCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  int? get idUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'worship_cards')
  List<WorshipCard> get worshipCardList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnWorshipCardCopyWith<OwnWorshipCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnWorshipCardCopyWith<$Res> {
  factory $OwnWorshipCardCopyWith(
          OwnWorshipCard value, $Res Function(OwnWorshipCard) then) =
      _$OwnWorshipCardCopyWithImpl<$Res, OwnWorshipCard>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_worship_card') int? idWorshipCard,
      @JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'worship_cards') List<WorshipCard> worshipCardList});
}

/// @nodoc
class _$OwnWorshipCardCopyWithImpl<$Res, $Val extends OwnWorshipCard>
    implements $OwnWorshipCardCopyWith<$Res> {
  _$OwnWorshipCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idWorshipCard = freezed,
    Object? idUser = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? worshipCardList = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idWorshipCard: freezed == idWorshipCard
          ? _value.idWorshipCard
          : idWorshipCard // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      worshipCardList: null == worshipCardList
          ? _value.worshipCardList
          : worshipCardList // ignore: cast_nullable_to_non_nullable
              as List<WorshipCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnWorshipCardImplCopyWith<$Res>
    implements $OwnWorshipCardCopyWith<$Res> {
  factory _$$OwnWorshipCardImplCopyWith(_$OwnWorshipCardImpl value,
          $Res Function(_$OwnWorshipCardImpl) then) =
      __$$OwnWorshipCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'id_worship_card') int? idWorshipCard,
      @JsonKey(name: 'id_user') int? idUser,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'worship_cards') List<WorshipCard> worshipCardList});
}

/// @nodoc
class __$$OwnWorshipCardImplCopyWithImpl<$Res>
    extends _$OwnWorshipCardCopyWithImpl<$Res, _$OwnWorshipCardImpl>
    implements _$$OwnWorshipCardImplCopyWith<$Res> {
  __$$OwnWorshipCardImplCopyWithImpl(
      _$OwnWorshipCardImpl _value, $Res Function(_$OwnWorshipCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? idWorshipCard = freezed,
    Object? idUser = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? worshipCardList = null,
  }) {
    return _then(_$OwnWorshipCardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      idWorshipCard: freezed == idWorshipCard
          ? _value.idWorshipCard
          : idWorshipCard // ignore: cast_nullable_to_non_nullable
              as int?,
      idUser: freezed == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      worshipCardList: null == worshipCardList
          ? _value._worshipCardList
          : worshipCardList // ignore: cast_nullable_to_non_nullable
              as List<WorshipCard>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnWorshipCardImpl extends _OwnWorshipCard {
  const _$OwnWorshipCardImpl(
      {this.id,
      @JsonKey(name: 'id_worship_card') this.idWorshipCard,
      @JsonKey(name: 'id_user') this.idUser,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'worship_cards')
      final List<WorshipCard> worshipCardList = const []})
      : _worshipCardList = worshipCardList,
        super._();

  factory _$OwnWorshipCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnWorshipCardImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_worship_card')
  final int? idWorshipCard;
  @override
  @JsonKey(name: 'id_user')
  final int? idUser;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<WorshipCard> _worshipCardList;
  @override
  @JsonKey(name: 'worship_cards')
  List<WorshipCard> get worshipCardList {
    if (_worshipCardList is EqualUnmodifiableListView) return _worshipCardList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_worshipCardList);
  }

  @override
  String toString() {
    return 'OwnWorshipCard(id: $id, idWorshipCard: $idWorshipCard, idUser: $idUser, createdAt: $createdAt, updatedAt: $updatedAt, worshipCardList: $worshipCardList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnWorshipCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idWorshipCard, idWorshipCard) ||
                other.idWorshipCard == idWorshipCard) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._worshipCardList, _worshipCardList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      idWorshipCard,
      idUser,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_worshipCardList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnWorshipCardImplCopyWith<_$OwnWorshipCardImpl> get copyWith =>
      __$$OwnWorshipCardImplCopyWithImpl<_$OwnWorshipCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnWorshipCardImplToJson(
      this,
    );
  }
}

abstract class _OwnWorshipCard extends OwnWorshipCard {
  const factory _OwnWorshipCard(
      {final int? id,
      @JsonKey(name: 'id_worship_card') final int? idWorshipCard,
      @JsonKey(name: 'id_user') final int? idUser,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'worship_cards')
      final List<WorshipCard> worshipCardList}) = _$OwnWorshipCardImpl;
  const _OwnWorshipCard._() : super._();

  factory _OwnWorshipCard.fromJson(Map<String, dynamic> json) =
      _$OwnWorshipCardImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'id_worship_card')
  int? get idWorshipCard;
  @override
  @JsonKey(name: 'id_user')
  int? get idUser;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'worship_cards')
  List<WorshipCard> get worshipCardList;
  @override
  @JsonKey(ignore: true)
  _$$OwnWorshipCardImplCopyWith<_$OwnWorshipCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
