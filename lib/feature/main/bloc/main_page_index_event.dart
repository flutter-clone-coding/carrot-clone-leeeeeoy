part of 'main_page_index_bloc.dart';

@freezed
class MainPageIndexEvent with _$MainPageIndexEvent {
  const factory MainPageIndexEvent.pageChanged(int index) = _PageChanged;
}
