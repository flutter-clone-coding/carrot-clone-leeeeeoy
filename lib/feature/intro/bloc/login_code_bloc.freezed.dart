// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginCodeEventTearOff {
  const _$LoginCodeEventTearOff();

  _Changed changed(String value) {
    return _Changed(
      value,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $LoginCodeEvent = _$LoginCodeEventTearOff();

/// @nodoc
mixin _$LoginCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changed,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
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
}

/// @nodoc
abstract class $LoginCodeEventCopyWith<$Res> {
  factory $LoginCodeEventCopyWith(
          LoginCodeEvent value, $Res Function(LoginCodeEvent) then) =
      _$LoginCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeEventCopyWithImpl<$Res>
    implements $LoginCodeEventCopyWith<$Res> {
  _$LoginCodeEventCopyWithImpl(this._value, this._then);

  final LoginCodeEvent _value;
  // ignore: unused_field
  final $Res Function(LoginCodeEvent) _then;
}

/// @nodoc
abstract class _$ChangedCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) then) =
      __$ChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$ChangedCopyWithImpl<$Res> extends _$LoginCodeEventCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(_Changed _value, $Res Function(_Changed) _then)
      : super(_value, (v) => _then(v as _Changed));

  @override
  _Changed get _value => super._value as _Changed;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Changed(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LoginCodeEvent.changed(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Changed &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ChangedCopyWith<_Changed> get copyWith =>
      __$ChangedCopyWithImpl<_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) changed,
    required TResult Function() submitted,
  }) {
    return changed(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? submitted,
  }) {
    return changed?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(value);
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
}

abstract class _Changed implements LoginCodeEvent {
  const factory _Changed(String value) = _$_Changed;

  String get value;
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
class __$SubmittedCopyWithImpl<$Res> extends _$LoginCodeEventCopyWithImpl<$Res>
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
    return 'LoginCodeEvent.submitted()';
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
    required TResult Function(String value) changed,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? changed,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? changed,
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
}

abstract class _Submitted implements LoginCodeEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$LoginCodeStateTearOff {
  const _$LoginCodeStateTearOff();

  LoginCodeInitial initial() {
    return const LoginCodeInitial();
  }

  LoginCodeValidationChecked validationChecked(bool isValid) {
    return LoginCodeValidationChecked(
      isValid,
    );
  }

  LoginCodeLoading loading() {
    return const LoginCodeLoading();
  }

  LoginCodeSucceed succeed() {
    return const LoginCodeSucceed();
  }

  LoginCodeError error() {
    return const LoginCodeError();
  }
}

/// @nodoc
const $LoginCodeState = _$LoginCodeStateTearOff();

/// @nodoc
mixin _$LoginCodeState {
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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCodeStateCopyWith<$Res> {
  factory $LoginCodeStateCopyWith(
          LoginCodeState value, $Res Function(LoginCodeState) then) =
      _$LoginCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeStateCopyWith<$Res> {
  _$LoginCodeStateCopyWithImpl(this._value, this._then);

  final LoginCodeState _value;
  // ignore: unused_field
  final $Res Function(LoginCodeState) _then;
}

/// @nodoc
abstract class $LoginCodeInitialCopyWith<$Res> {
  factory $LoginCodeInitialCopyWith(
          LoginCodeInitial value, $Res Function(LoginCodeInitial) then) =
      _$LoginCodeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeInitialCopyWithImpl<$Res>
    extends _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeInitialCopyWith<$Res> {
  _$LoginCodeInitialCopyWithImpl(
      LoginCodeInitial _value, $Res Function(LoginCodeInitial) _then)
      : super(_value, (v) => _then(v as LoginCodeInitial));

  @override
  LoginCodeInitial get _value => super._value as LoginCodeInitial;
}

/// @nodoc

class _$LoginCodeInitial implements LoginCodeInitial {
  const _$LoginCodeInitial();

  @override
  String toString() {
    return 'LoginCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginCodeInitial);
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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) {
    return initial?.call(this);
  }
}

abstract class LoginCodeInitial implements LoginCodeState {
  const factory LoginCodeInitial() = _$LoginCodeInitial;
}

/// @nodoc
abstract class $LoginCodeValidationCheckedCopyWith<$Res> {
  factory $LoginCodeValidationCheckedCopyWith(LoginCodeValidationChecked value,
          $Res Function(LoginCodeValidationChecked) then) =
      _$LoginCodeValidationCheckedCopyWithImpl<$Res>;
  $Res call({bool isValid});
}

/// @nodoc
class _$LoginCodeValidationCheckedCopyWithImpl<$Res>
    extends _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeValidationCheckedCopyWith<$Res> {
  _$LoginCodeValidationCheckedCopyWithImpl(LoginCodeValidationChecked _value,
      $Res Function(LoginCodeValidationChecked) _then)
      : super(_value, (v) => _then(v as LoginCodeValidationChecked));

  @override
  LoginCodeValidationChecked get _value =>
      super._value as LoginCodeValidationChecked;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(LoginCodeValidationChecked(
      isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginCodeValidationChecked implements LoginCodeValidationChecked {
  const _$LoginCodeValidationChecked(this.isValid);

  @override
  final bool isValid;

  @override
  String toString() {
    return 'LoginCodeState.validationChecked(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginCodeValidationChecked &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isValid));

  @JsonKey(ignore: true)
  @override
  $LoginCodeValidationCheckedCopyWith<LoginCodeValidationChecked>
      get copyWith =>
          _$LoginCodeValidationCheckedCopyWithImpl<LoginCodeValidationChecked>(
              this, _$identity);

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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) {
    return validationChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) {
    return validationChecked?.call(this);
  }
}

abstract class LoginCodeValidationChecked implements LoginCodeState {
  const factory LoginCodeValidationChecked(bool isValid) =
      _$LoginCodeValidationChecked;

  bool get isValid;
  @JsonKey(ignore: true)
  $LoginCodeValidationCheckedCopyWith<LoginCodeValidationChecked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCodeLoadingCopyWith<$Res> {
  factory $LoginCodeLoadingCopyWith(
          LoginCodeLoading value, $Res Function(LoginCodeLoading) then) =
      _$LoginCodeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeLoadingCopyWithImpl<$Res>
    extends _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeLoadingCopyWith<$Res> {
  _$LoginCodeLoadingCopyWithImpl(
      LoginCodeLoading _value, $Res Function(LoginCodeLoading) _then)
      : super(_value, (v) => _then(v as LoginCodeLoading));

  @override
  LoginCodeLoading get _value => super._value as LoginCodeLoading;
}

/// @nodoc

class _$LoginCodeLoading implements LoginCodeLoading {
  const _$LoginCodeLoading();

  @override
  String toString() {
    return 'LoginCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginCodeLoading);
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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) {
    return loading?.call(this);
  }
}

abstract class LoginCodeLoading implements LoginCodeState {
  const factory LoginCodeLoading() = _$LoginCodeLoading;
}

/// @nodoc
abstract class $LoginCodeSucceedCopyWith<$Res> {
  factory $LoginCodeSucceedCopyWith(
          LoginCodeSucceed value, $Res Function(LoginCodeSucceed) then) =
      _$LoginCodeSucceedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeSucceedCopyWithImpl<$Res>
    extends _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeSucceedCopyWith<$Res> {
  _$LoginCodeSucceedCopyWithImpl(
      LoginCodeSucceed _value, $Res Function(LoginCodeSucceed) _then)
      : super(_value, (v) => _then(v as LoginCodeSucceed));

  @override
  LoginCodeSucceed get _value => super._value as LoginCodeSucceed;
}

/// @nodoc

class _$LoginCodeSucceed implements LoginCodeSucceed {
  const _$LoginCodeSucceed();

  @override
  String toString() {
    return 'LoginCodeState.succeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginCodeSucceed);
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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) {
    return succeed?.call(this);
  }
}

abstract class LoginCodeSucceed implements LoginCodeState {
  const factory LoginCodeSucceed() = _$LoginCodeSucceed;
}

/// @nodoc
abstract class $LoginCodeErrorCopyWith<$Res> {
  factory $LoginCodeErrorCopyWith(
          LoginCodeError value, $Res Function(LoginCodeError) then) =
      _$LoginCodeErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCodeErrorCopyWithImpl<$Res>
    extends _$LoginCodeStateCopyWithImpl<$Res>
    implements $LoginCodeErrorCopyWith<$Res> {
  _$LoginCodeErrorCopyWithImpl(
      LoginCodeError _value, $Res Function(LoginCodeError) _then)
      : super(_value, (v) => _then(v as LoginCodeError));

  @override
  LoginCodeError get _value => super._value as LoginCodeError;
}

/// @nodoc

class _$LoginCodeError implements LoginCodeError {
  const _$LoginCodeError();

  @override
  String toString() {
    return 'LoginCodeState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginCodeError);
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
    required TResult Function(LoginCodeInitial value) initial,
    required TResult Function(LoginCodeValidationChecked value)
        validationChecked,
    required TResult Function(LoginCodeLoading value) loading,
    required TResult Function(LoginCodeSucceed value) succeed,
    required TResult Function(LoginCodeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginCodeInitial value)? initial,
    TResult Function(LoginCodeValidationChecked value)? validationChecked,
    TResult Function(LoginCodeLoading value)? loading,
    TResult Function(LoginCodeSucceed value)? succeed,
    TResult Function(LoginCodeError value)? error,
  }) {
    return error?.call(this);
  }
}

abstract class LoginCodeError implements LoginCodeState {
  const factory LoginCodeError() = _$LoginCodeError;
}
