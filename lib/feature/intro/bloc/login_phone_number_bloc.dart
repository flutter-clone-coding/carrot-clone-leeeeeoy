import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_phone_number_event.dart';
part 'login_phone_number_state.dart';
part 'login_phone_number_bloc.freezed.dart';

class LoginPhoneNumberBloc extends Bloc<LoginPhoneNumberEvent, LoginPhoneNumberState> {
  LoginPhoneNumberBloc() : super(const LoginPhoneNumberInitial()) {
    on<_Changed>(onChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> onChanged(
    _Changed event,
    Emitter<LoginPhoneNumberState> emit,
  ) {
    emit(LoginPhoneNumberState.validationChecked(event.phoneNumber.length >= 10));
  }

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<LoginPhoneNumberState> emit,
  ) async {
    emit(const LoginPhoneNumberState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(const LoginPhoneNumberState.succeed());
  }
}
