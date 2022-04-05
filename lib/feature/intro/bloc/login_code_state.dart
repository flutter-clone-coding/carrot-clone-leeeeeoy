part of 'login_code_bloc.dart';

@freezed
class LoginCodeState with _$LoginCodeState {
  const factory LoginCodeState.initial() = _Initial;

  const factory LoginCodeState.validationChecked(bool isValid) = _ValidationChecked;

  const factory LoginCodeState.loading() = _Loading;

  const factory LoginCodeState.succeed() = _Succeed;

  const factory LoginCodeState.error() = _Error;
}
