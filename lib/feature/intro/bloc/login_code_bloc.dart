import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_code_event.dart';
part 'login_code_state.dart';
part 'login_code_bloc.freezed.dart';

class LoginCodeBloc extends Bloc<LoginCodeEvent, LoginCodeState> {
  LoginCodeBloc() : super(const LoginCodeInitial()) {
    on<_Changed>(_onChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onChanged(
    _Changed event,
    Emitter<LoginCodeState> emit,
  ) {
    emit(LoginCodeState.validationChecked(event.value.length == 6));
  }

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<LoginCodeState> emit,
  ) async {
    emit(const LoginCodeState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(const LoginCodeState.succeed());
  }
}
