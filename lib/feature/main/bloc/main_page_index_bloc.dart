import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_index_event.dart';
part 'main_page_index_bloc.freezed.dart';

class MainPageIndexBloc extends Bloc<MainPageIndexEvent, int> {
  MainPageIndexBloc() : super(0) {
    on<_PageChanged>(_onPageChanged);
  }

  FutureOr<void> _onPageChanged(
    _PageChanged event,
    Emitter<int> emit,
  ) {
    emit(event.index);
  }
}
