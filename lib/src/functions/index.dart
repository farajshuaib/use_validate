import 'package:use_validate/src/validation_types.dart';
import 'package:use_validate/src/extensions/rules.dart';
import 'package:use_validate/src/extensions/error_messages.dart';

bool validate({required String value, required List<FieldRule> validationRules}) {
  return validationRules.every((element) => RegExp(element.value).hasMatch(value));
}

String errorMessage({required String value, required List<FieldRule> validationRules}) {
  return validationRules.firstWhere((element) => !RegExp(element.value).hasMatch(value)).error;
}
