part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.loadedData({required List<dynamic> allData}) =
      LoadedData;
  const factory SearchState.notFound() = NotFound;
  const factory SearchState.connection() = Connection;
}
