part of 'login_code_bloc.dart';

@freezed
class LoginCodeState with _$LoginCodeState {
  const factory LoginCodeState.initial() = LoginCodeInitial;

  const factory LoginCodeState.validationChecked(bool isValid) = LoginCodeValidationChecked;

  const factory LoginCodeState.loading() = LoginCodeLoading;

  const factory LoginCodeState.succeed() = LoginCodeSucceed;

  const factory LoginCodeState.error() = LoginCodeError;
}
