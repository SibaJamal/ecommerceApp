import 'package:e_commerce/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/domain/core/value_object.dart';
import 'package:e_commerce/domain/core/failures.dart';

class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }
  EmailAddress._(this.value);
}

class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  Password._(this.value);
}
