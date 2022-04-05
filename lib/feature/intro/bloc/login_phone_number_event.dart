part of 'login_phone_number_bloc.dart';

@freezed
class LoginPhoneNumberEvent with _$LoginPhoneNumberEvent {
  const factory LoginPhoneNumberEvent.changed(String phoneNumber) = _Changed;

  const factory LoginPhoneNumberEvent.submitted() = _Submitted;
}
