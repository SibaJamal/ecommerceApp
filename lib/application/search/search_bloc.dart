import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../infrastructure/search/search_repository.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchRepository searchRepository;
  SearchBloc(this.searchRepository) : super(const SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        searchValueChanged: (e) async {
          try {
            emit(const SearchState.loading());
            List<dynamic> list = await searchRepository.searchProducts(
                searchValue: e.searchValue);
            if (list.isEmpty) {
              emit(const SearchState.notFound());
            } else {
              emit(SearchState.loadedData(allData: list));
            }
          } catch (e) {
            print(e);
          }
        },
        valueDeleted: (e) {
          emit(const SearchState.initial());
        },
      );
    });
  }
}
