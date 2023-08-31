import 'package:use_validate/src/model/ValidationResult.dart';
import 'package:use_validate/src/model/validation_rule.dart';

ValidationResult validate({required String? value, required List<ValidationRule> validationRules}) {
  if (value == null) return ValidationResult(false, "this filed is null");

  try {
    final validationRule = validationRules.firstWhere((element) => !RegExp(element.pattern!).hasMatch(value));
    return ValidationResult(false, validationRule.errorMessage ?? "Invalid Field");
  } catch (e) {
    return ValidationResult(true, "");
  }
}
