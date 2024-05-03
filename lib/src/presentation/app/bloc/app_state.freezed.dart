// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  String? get currentLanguageCode => throw _privateConstructorUsedError;
  ThemeData? get themeData => throw _privateConstructorUsedError;
  double? get fontScale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {String? currentLanguageCode, ThemeData? themeData, double? fontScale});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguageCode = freezed,
    Object? themeData = freezed,
    Object? fontScale = freezed,
  }) {
    return _then(_value.copyWith(
      currentLanguageCode: freezed == currentLanguageCode
          ? _value.currentLanguageCode
          : currentLanguageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      themeData: freezed == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      fontScale: freezed == fontScale
          ? _value.fontScale
          : fontScale // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currentLanguageCode, ThemeData? themeData, double? fontScale});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLanguageCode = freezed,
    Object? themeData = freezed,
    Object? fontScale = freezed,
  }) {
    return _then(_$AppStateImpl(
      currentLanguageCode: freezed == currentLanguageCode
          ? _value.currentLanguageCode
          : currentLanguageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      themeData: freezed == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      fontScale: freezed == fontScale
          ? _value.fontScale
          : fontScale // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {this.currentLanguageCode, this.themeData, this.fontScale = 1.0});

  @override
  final String? currentLanguageCode;
  @override
  final ThemeData? themeData;
  @override
  @JsonKey()
  final double? fontScale;

  @override
  String toString() {
    return 'AppState(currentLanguageCode: $currentLanguageCode, themeData: $themeData, fontScale: $fontScale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.currentLanguageCode, currentLanguageCode) ||
                other.currentLanguageCode == currentLanguageCode) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData) &&
            (identical(other.fontScale, fontScale) ||
                other.fontScale == fontScale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentLanguageCode, themeData, fontScale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final String? currentLanguageCode,
      final ThemeData? themeData,
      final double? fontScale}) = _$AppStateImpl;

  @override
  String? get currentLanguageCode;
  @override
  ThemeData? get themeData;
  @override
  double? get fontScale;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
