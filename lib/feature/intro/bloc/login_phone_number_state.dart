part of 'login_phone_number_bloc.dart';

@freezed
class LoginPhoneNumberState with _$LoginPhoneNumberState {
  const factory LoginPhoneNumberState.initial() = LoginPhoneNumberInitial;

  const factory LoginPhoneNumberState.validationChecked(bool isValid) = LoginPhoneNumberValidationChecked;

  const factory LoginPhoneNumberState.loading() = LoginPhoneNumberLoading;

  const factory LoginPhoneNumberState.succeed() = LoginPhoneNumberSucceed;

  const factory LoginPhoneNumberState.error() = LoginPhoneNumberError;
}
