part of 'login_phone_number_bloc.dart';

@freezed
class LoginPhoneNumberState with _$LoginPhoneNumberState {
  const factory LoginPhoneNumberState.initial() = _Initial;

  const factory LoginPhoneNumberState.validationChecked(bool isValid) = _ValidationChecked;

  const factory LoginPhoneNumberState.loading() = _Loading;

  const factory LoginPhoneNumberState.succeed() = _Succeed;

  const factory LoginPhoneNumberState.error() = _Error;
}
