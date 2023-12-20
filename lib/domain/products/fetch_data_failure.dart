import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_data_failure.freezed.dart';

@freezed
abstract class FetchDataFailure with _$FetchDataFailure {
  const factory FetchDataFailure.connection() = Connection;
  const factory FetchDataFailure.serverError() = ServerError;

}