part of 'login_code_bloc.dart';

@freezed
class LoginCodeEvent with _$LoginCodeEvent {
  const factory LoginCodeEvent.changed(String value) = _Changed;

  const factory LoginCodeEvent.submitted() = _Submitted;
}
