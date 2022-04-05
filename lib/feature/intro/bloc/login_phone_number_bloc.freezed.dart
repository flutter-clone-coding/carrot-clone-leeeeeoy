// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginPhoneNumberEventTearOff {
  const _$LoginPhoneNumberEventTearOff();

  _Changed changed(String phoneNumber) {
    return _Changed(
      phoneNumber,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $LoginPhoneNumberEvent = _$LoginPhoneNumberEventTearOff();

/// @nodoc
mixin _$LoginPhoneNumberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) changed,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPhoneNumberEventCopyWith<$Res> {
  factory $LoginPhoneNumberEventCopyWith(LoginPhoneNumberEvent value,
          $Res Function(LoginPhoneNumberEvent) then) =
      _$LoginPhoneNumberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberEventCopyWithImpl<$Res>
    implements $LoginPhoneNumberEventCopyWith<$Res> {
  _$LoginPhoneNumberEventCopyWithImpl(this._value, this._then);

  final LoginPhoneNumberEvent _value;
  // ignore: unused_field
  final $Res Function(LoginPhoneNumberEvent) _then;
}

/// @nodoc
abstract class _$ChangedCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$ChangedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_Changed(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginPhoneNumberEvent.changed(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Changed &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) changed,
    required TResult Function() submitted,
  }) {
    return changed(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
  }) {
    return changed?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements LoginPhoneNumberEvent {
  const factory _Changed(String phoneNumber) = _$_Changed;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$ChangedCopyWith<_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'LoginPhoneNumberEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) changed,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements LoginPhoneNumberEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$LoginPhoneNumberStateTearOff {
  const _$LoginPhoneNumberStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ValidationChecked validationChecked(bool isValid) {
    return _ValidationChecked(
      isValid,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Succeed succeed() {
    return const _Succeed();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LoginPhoneNumberState = _$LoginPhoneNumberStateTearOff();

/// @nodoc
mixin _$LoginPhoneNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPhoneNumberStateCopyWith<$Res> {
  factory $LoginPhoneNumberStateCopyWith(LoginPhoneNumberState value,
          $Res Function(LoginPhoneNumberState) then) =
      _$LoginPhoneNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberStateCopyWith<$Res> {
  _$LoginPhoneNumberStateCopyWithImpl(this._value, this._then);

  final LoginPhoneNumberState _value;
  // ignore: unused_field
  final $Res Function(LoginPhoneNumberState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginPhoneNumberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginPhoneNumberState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ValidationCheckedCopyWith<$Res> {
  factory _$ValidationCheckedCopyWith(
          _ValidationChecked value, $Res Function(_ValidationChecked) then) =
      __$ValidationCheckedCopyWithImpl<$Res>;
  $Res call({bool isValid});
}

/// @nodoc
class __$ValidationCheckedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements _$ValidationCheckedCopyWith<$Res> {
  __$ValidationCheckedCopyWithImpl(
      _ValidationChecked _value, $Res Function(_ValidationChecked) _then)
      : super(_value, (v) => _then(v as _ValidationChecked));

  @override
  _ValidationChecked get _value => super._value as _ValidationChecked;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(_ValidationChecked(
      isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ValidationChecked implements _ValidationChecked {
  const _$_ValidationChecked(this.isValid);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'LoginPhoneNumberState.validationChecked(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationChecked &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isValid));

  @JsonKey(ignore: true)
  @override
  _$ValidationCheckedCopyWith<_ValidationChecked> get copyWith =>
      __$ValidationCheckedCopyWithImpl<_ValidationChecked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return validationChecked(isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) {
    return validationChecked?.call(isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (validationChecked != null) {
      return validationChecked(isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) {
    return validationChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) {
    return validationChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (validationChecked != null) {
      return validationChecked(this);
    }
    return orElse();
  }
}

abstract class _ValidationChecked implements LoginPhoneNumberState {
  const factory _ValidationChecked(bool isValid) = _$_ValidationChecked;

  bool get isValid;
  @JsonKey(ignore: true)
  _$ValidationCheckedCopyWith<_ValidationChecked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginPhoneNumberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginPhoneNumberState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SucceedCopyWith<$Res> {
  factory _$SucceedCopyWith(_Succeed value, $Res Function(_Succeed) then) =
      __$SucceedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SucceedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements _$SucceedCopyWith<$Res> {
  __$SucceedCopyWithImpl(_Succeed _value, $Res Function(_Succeed) _then)
      : super(_value, (v) => _then(v as _Succeed));

  @override
  _Succeed get _value => super._value as _Succeed;
}

/// @nodoc

class _$_Succeed implements _Succeed {
  const _$_Succeed();

  @override
  String toString() {
    return 'LoginPhoneNumberState.succeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Succeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return succeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) {
    return succeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class _Succeed implements LoginPhoneNumberState {
  const factory _Succeed() = _$_Succeed;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'LoginPhoneNumberState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isValid) validationChecked,
    required TResult Function() loading,
    required TResult Function() succeed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isValid)? validationChecked,
    TResult Function()? loading,
    TResult Function()? succeed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ValidationChecked value) validationChecked,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succeed value) succeed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ValidationChecked value)? validationChecked,
    TResult Function(_Loading value)? loading,
    TResult Function(_Succeed value)? succeed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginPhoneNumberState {
  const factory _Error() = _$_Error;
}
