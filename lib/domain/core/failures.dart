import 'package:freezed_annotation/freezed_annotation.dart';


part 'failures.freezed.dart';


@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmailAddress({required String failedValue}) = InvalidEmailAdress<T>;
  const factory ValueFailure.shortPassword({required String failedValue}) = ShortPassword<T>;


}