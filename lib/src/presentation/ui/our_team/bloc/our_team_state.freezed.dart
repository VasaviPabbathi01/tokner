// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_team_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OurTeamState {
  int get cardIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OurTeamStateCopyWith<OurTeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurTeamStateCopyWith<$Res> {
  factory $OurTeamStateCopyWith(
          OurTeamState value, $Res Function(OurTeamState) then) =
      _$OurTeamStateCopyWithImpl<$Res, OurTeamState>;
  @useResult
  $Res call({int cardIndex});
}

/// @nodoc
class _$OurTeamStateCopyWithImpl<$Res, $Val extends OurTeamState>
    implements $OurTeamStateCopyWith<$Res> {
  _$OurTeamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardIndex = null,
  }) {
    return _then(_value.copyWith(
      cardIndex: null == cardIndex
          ? _value.cardIndex
          : cardIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OurTeamStateImplCopyWith<$Res>
    implements $OurTeamStateCopyWith<$Res> {
  factory _$$OurTeamStateImplCopyWith(
          _$OurTeamStateImpl value, $Res Function(_$OurTeamStateImpl) then) =
      __$$OurTeamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cardIndex});
}

/// @nodoc
class __$$OurTeamStateImplCopyWithImpl<$Res>
    extends _$OurTeamStateCopyWithImpl<$Res, _$OurTeamStateImpl>
    implements _$$OurTeamStateImplCopyWith<$Res> {
  __$$OurTeamStateImplCopyWithImpl(
      _$OurTeamStateImpl _value, $Res Function(_$OurTeamStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardIndex = null,
  }) {
    return _then(_$OurTeamStateImpl(
      cardIndex: null == cardIndex
          ? _value.cardIndex
          : cardIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OurTeamStateImpl implements _OurTeamState {
  const _$OurTeamStateImpl({this.cardIndex = 1});

  @override
  @JsonKey()
  final int cardIndex;

  @override
  String toString() {
    return 'OurTeamState(cardIndex: $cardIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OurTeamStateImpl &&
            (identical(other.cardIndex, cardIndex) ||
                other.cardIndex == cardIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OurTeamStateImplCopyWith<_$OurTeamStateImpl> get copyWith =>
      __$$OurTeamStateImplCopyWithImpl<_$OurTeamStateImpl>(this, _$identity);
}

abstract class _OurTeamState implements OurTeamState {
  const factory _OurTeamState({final int cardIndex}) = _$OurTeamStateImpl;

  @override
  int get cardIndex;
  @override
  @JsonKey(ignore: true)
  _$$OurTeamStateImplCopyWith<_$OurTeamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
