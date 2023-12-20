part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchValueChanged(String searchValue) =
      SearchValueChanged;
  const factory SearchEvent.valueDeleted() = ValueDeleted;
}
