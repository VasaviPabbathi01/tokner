// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLanguageChanged {
  String get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLanguageChangedCopyWith<AppLanguageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLanguageChangedCopyWith<$Res> {
  factory $AppLanguageChangedCopyWith(
          AppLanguageChanged value, $Res Function(AppLanguageChanged) then) =
      _$AppLanguageChangedCopyWithImpl<$Res, AppLanguageChanged>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class _$AppLanguageChangedCopyWithImpl<$Res, $Val extends AppLanguageChanged>
    implements $AppLanguageChangedCopyWith<$Res> {
  _$AppLanguageChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLanguageChangedImplCopyWith<$Res>
    implements $AppLanguageChangedCopyWith<$Res> {
  factory _$$AppLanguageChangedImplCopyWith(_$AppLanguageChangedImpl value,
          $Res Function(_$AppLanguageChangedImpl) then) =
      __$$AppLanguageChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$AppLanguageChangedImplCopyWithImpl<$Res>
    extends _$AppLanguageChangedCopyWithImpl<$Res, _$AppLanguageChangedImpl>
    implements _$$AppLanguageChangedImplCopyWith<$Res> {
  __$$AppLanguageChangedImplCopyWithImpl(_$AppLanguageChangedImpl _value,
      $Res Function(_$AppLanguageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$AppLanguageChangedImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppLanguageChangedImpl implements _AppLanguageChanged {
  const _$AppLanguageChangedImpl({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'AppLanguageChanged(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLanguageChangedImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLanguageChangedImplCopyWith<_$AppLanguageChangedImpl> get copyWith =>
      __$$AppLanguageChangedImplCopyWithImpl<_$AppLanguageChangedImpl>(
          this, _$identity);
}

abstract class _AppLanguageChanged implements AppLanguageChanged {
  const factory _AppLanguageChanged({required final String languageCode}) =
      _$AppLanguageChangedImpl;

  @override
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$AppLanguageChangedImplCopyWith<_$AppLanguageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppInitiated {}

/// @nodoc
abstract class $AppInitiatedCopyWith<$Res> {
  factory $AppInitiatedCopyWith(
          AppInitiated value, $Res Function(AppInitiated) then) =
      _$AppInitiatedCopyWithImpl<$Res, AppInitiated>;
}

/// @nodoc
class _$AppInitiatedCopyWithImpl<$Res, $Val extends AppInitiated>
    implements $AppInitiatedCopyWith<$Res> {
  _$AppInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitiatedImplCopyWith<$Res> {
  factory _$$AppInitiatedImplCopyWith(
          _$AppInitiatedImpl value, $Res Function(_$AppInitiatedImpl) then) =
      __$$AppInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitiatedImplCopyWithImpl<$Res>
    extends _$AppInitiatedCopyWithImpl<$Res, _$AppInitiatedImpl>
    implements _$$AppInitiatedImplCopyWith<$Res> {
  __$$AppInitiatedImplCopyWithImpl(
      _$AppInitiatedImpl _value, $Res Function(_$AppInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitiatedImpl implements _AppInitiated {
  const _$AppInitiatedImpl();

  @override
  String toString() {
    return 'AppInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppInitiated implements AppInitiated {
  const factory _AppInitiated() = _$AppInitiatedImpl;
}

/// @nodoc
mixin _$AppThemeChanged {
  AppearanceMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeChangedCopyWith<AppThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeChangedCopyWith<$Res> {
  factory $AppThemeChangedCopyWith(
          AppThemeChanged value, $Res Function(AppThemeChanged) then) =
      _$AppThemeChangedCopyWithImpl<$Res, AppThemeChanged>;
  @useResult
  $Res call({AppearanceMode themeMode});
}

/// @nodoc
class _$AppThemeChangedCopyWithImpl<$Res, $Val extends AppThemeChanged>
    implements $AppThemeChangedCopyWith<$Res> {
  _$AppThemeChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as AppearanceMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeChangedImplCopyWith<$Res>
    implements $AppThemeChangedCopyWith<$Res> {
  factory _$$AppThemeChangedImplCopyWith(_$AppThemeChangedImpl value,
          $Res Function(_$AppThemeChangedImpl) then) =
      __$$AppThemeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppearanceMode themeMode});
}

/// @nodoc
class __$$AppThemeChangedImplCopyWithImpl<$Res>
    extends _$AppThemeChangedCopyWithImpl<$Res, _$AppThemeChangedImpl>
    implements _$$AppThemeChangedImplCopyWith<$Res> {
  __$$AppThemeChangedImplCopyWithImpl(
      _$AppThemeChangedImpl _value, $Res Function(_$AppThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$AppThemeChangedImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as AppearanceMode,
    ));
  }
}

/// @nodoc

class _$AppThemeChangedImpl implements _AppThemeChanged {
  const _$AppThemeChangedImpl({required this.themeMode});

  @override
  final AppearanceMode themeMode;

  @override
  String toString() {
    return 'AppThemeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeChangedImplCopyWith<_$AppThemeChangedImpl> get copyWith =>
      __$$AppThemeChangedImplCopyWithImpl<_$AppThemeChangedImpl>(
          this, _$identity);
}

abstract class _AppThemeChanged implements AppThemeChanged {
  const factory _AppThemeChanged({required final AppearanceMode themeMode}) =
      _$AppThemeChangedImpl;

  @override
  AppearanceMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$AppThemeChangedImplCopyWith<_$AppThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
