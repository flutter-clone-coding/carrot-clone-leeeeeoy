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
}

abstract class _Submitted implements LoginPhoneNumberEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$LoginPhoneNumberStateTearOff {
  const _$LoginPhoneNumberStateTearOff();

  LoginPhoneNumberInitial initial() {
    return const LoginPhoneNumberInitial();
  }

  LoginPhoneNumberValidationChecked validationChecked(bool isValid) {
    return LoginPhoneNumberValidationChecked(
      isValid,
    );
  }

  LoginPhoneNumberLoading loading() {
    return const LoginPhoneNumberLoading();
  }

  LoginPhoneNumberSucceed succeed() {
    return const LoginPhoneNumberSucceed();
  }

  LoginPhoneNumberError error() {
    return const LoginPhoneNumberError();
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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
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
abstract class $LoginPhoneNumberInitialCopyWith<$Res> {
  factory $LoginPhoneNumberInitialCopyWith(LoginPhoneNumberInitial value,
          $Res Function(LoginPhoneNumberInitial) then) =
      _$LoginPhoneNumberInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberInitialCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberInitialCopyWith<$Res> {
  _$LoginPhoneNumberInitialCopyWithImpl(LoginPhoneNumberInitial _value,
      $Res Function(LoginPhoneNumberInitial) _then)
      : super(_value, (v) => _then(v as LoginPhoneNumberInitial));

  @override
  LoginPhoneNumberInitial get _value => super._value as LoginPhoneNumberInitial;
}

/// @nodoc

class _$LoginPhoneNumberInitial implements LoginPhoneNumberInitial {
  const _$LoginPhoneNumberInitial();

  @override
  String toString() {
    return 'LoginPhoneNumberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPhoneNumberInitial);
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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
  }) {
    return initial?.call(this);
  }
}

abstract class LoginPhoneNumberInitial implements LoginPhoneNumberState {
  const factory LoginPhoneNumberInitial() = _$LoginPhoneNumberInitial;
}

/// @nodoc
abstract class $LoginPhoneNumberValidationCheckedCopyWith<$Res> {
  factory $LoginPhoneNumberValidationCheckedCopyWith(
          LoginPhoneNumberValidationChecked value,
          $Res Function(LoginPhoneNumberValidationChecked) then) =
      _$LoginPhoneNumberValidationCheckedCopyWithImpl<$Res>;
  $Res call({bool isValid});
}

/// @nodoc
class _$LoginPhoneNumberValidationCheckedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberValidationCheckedCopyWith<$Res> {
  _$LoginPhoneNumberValidationCheckedCopyWithImpl(
      LoginPhoneNumberValidationChecked _value,
      $Res Function(LoginPhoneNumberValidationChecked) _then)
      : super(_value, (v) => _then(v as LoginPhoneNumberValidationChecked));

  @override
  LoginPhoneNumberValidationChecked get _value =>
      super._value as LoginPhoneNumberValidationChecked;

  @override
  $Res call({
    Object? isValid = freezed,
  }) {
    return _then(LoginPhoneNumberValidationChecked(
      isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginPhoneNumberValidationChecked
    implements LoginPhoneNumberValidationChecked {
  const _$LoginPhoneNumberValidationChecked(this.isValid);

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
            other is LoginPhoneNumberValidationChecked &&
            const DeepCollectionEquality().equals(other.isValid, isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isValid));

  @JsonKey(ignore: true)
  @override
  $LoginPhoneNumberValidationCheckedCopyWith<LoginPhoneNumberValidationChecked>
      get copyWith => _$LoginPhoneNumberValidationCheckedCopyWithImpl<
          LoginPhoneNumberValidationChecked>(this, _$identity);

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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) {
    return validationChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
  }) {
    return validationChecked?.call(this);
  }
}

abstract class LoginPhoneNumberValidationChecked
    implements LoginPhoneNumberState {
  const factory LoginPhoneNumberValidationChecked(bool isValid) =
      _$LoginPhoneNumberValidationChecked;

  bool get isValid;
  @JsonKey(ignore: true)
  $LoginPhoneNumberValidationCheckedCopyWith<LoginPhoneNumberValidationChecked>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPhoneNumberLoadingCopyWith<$Res> {
  factory $LoginPhoneNumberLoadingCopyWith(LoginPhoneNumberLoading value,
          $Res Function(LoginPhoneNumberLoading) then) =
      _$LoginPhoneNumberLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberLoadingCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberLoadingCopyWith<$Res> {
  _$LoginPhoneNumberLoadingCopyWithImpl(LoginPhoneNumberLoading _value,
      $Res Function(LoginPhoneNumberLoading) _then)
      : super(_value, (v) => _then(v as LoginPhoneNumberLoading));

  @override
  LoginPhoneNumberLoading get _value => super._value as LoginPhoneNumberLoading;
}

/// @nodoc

class _$LoginPhoneNumberLoading implements LoginPhoneNumberLoading {
  const _$LoginPhoneNumberLoading();

  @override
  String toString() {
    return 'LoginPhoneNumberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPhoneNumberLoading);
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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
  }) {
    return loading?.call(this);
  }
}

abstract class LoginPhoneNumberLoading implements LoginPhoneNumberState {
  const factory LoginPhoneNumberLoading() = _$LoginPhoneNumberLoading;
}

/// @nodoc
abstract class $LoginPhoneNumberSucceedCopyWith<$Res> {
  factory $LoginPhoneNumberSucceedCopyWith(LoginPhoneNumberSucceed value,
          $Res Function(LoginPhoneNumberSucceed) then) =
      _$LoginPhoneNumberSucceedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberSucceedCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberSucceedCopyWith<$Res> {
  _$LoginPhoneNumberSucceedCopyWithImpl(LoginPhoneNumberSucceed _value,
      $Res Function(LoginPhoneNumberSucceed) _then)
      : super(_value, (v) => _then(v as LoginPhoneNumberSucceed));

  @override
  LoginPhoneNumberSucceed get _value => super._value as LoginPhoneNumberSucceed;
}

/// @nodoc

class _$LoginPhoneNumberSucceed implements LoginPhoneNumberSucceed {
  const _$LoginPhoneNumberSucceed();

  @override
  String toString() {
    return 'LoginPhoneNumberState.succeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPhoneNumberSucceed);
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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
  }) {
    return succeed?.call(this);
  }
}

abstract class LoginPhoneNumberSucceed implements LoginPhoneNumberState {
  const factory LoginPhoneNumberSucceed() = _$LoginPhoneNumberSucceed;
}

/// @nodoc
abstract class $LoginPhoneNumberErrorCopyWith<$Res> {
  factory $LoginPhoneNumberErrorCopyWith(LoginPhoneNumberError value,
          $Res Function(LoginPhoneNumberError) then) =
      _$LoginPhoneNumberErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPhoneNumberErrorCopyWithImpl<$Res>
    extends _$LoginPhoneNumberStateCopyWithImpl<$Res>
    implements $LoginPhoneNumberErrorCopyWith<$Res> {
  _$LoginPhoneNumberErrorCopyWithImpl(
      LoginPhoneNumberError _value, $Res Function(LoginPhoneNumberError) _then)
      : super(_value, (v) => _then(v as LoginPhoneNumberError));

  @override
  LoginPhoneNumberError get _value => super._value as LoginPhoneNumberError;
}

/// @nodoc

class _$LoginPhoneNumberError implements LoginPhoneNumberError {
  const _$LoginPhoneNumberError();

  @override
  String toString() {
    return 'LoginPhoneNumberState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPhoneNumberError);
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
    required TResult Function(LoginPhoneNumberInitial value) initial,
    required TResult Function(LoginPhoneNumberValidationChecked value)
        validationChecked,
    required TResult Function(LoginPhoneNumberLoading value) loading,
    required TResult Function(LoginPhoneNumberSucceed value) succeed,
    required TResult Function(LoginPhoneNumberError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginPhoneNumberInitial value)? initial,
    TResult Function(LoginPhoneNumberValidationChecked value)?
        validationChecked,
    TResult Function(LoginPhoneNumberLoading value)? loading,
    TResult Function(LoginPhoneNumberSucceed value)? succeed,
    TResult Function(LoginPhoneNumberError value)? error,
  }) {
    return error?.call(this);
  }
}

abstract class LoginPhoneNumberError implements LoginPhoneNumberState {
  const factory LoginPhoneNumberError() = _$LoginPhoneNumberError;
}
