import 'package:use_validate/src/model/validation_result.dart';
import 'package:use_validate/src/model/validation_rule.dart';

// this function is used to validate the input form field
// it takes the value of the field and the validation rules<pattern, custom message>
ValidationResult validate(
    {required String? value, required List<ValidationRule> validationRules}) {
  // check if the value is null
  if (value == null) return ValidationResult(false, "this filed is null");

  try {
    final validationRule = validationRules
        .firstWhere((element) => !RegExp(element.pattern!).hasMatch(value));
    return ValidationResult(
        false, validationRule.errorMessage ?? "Invalid Field");
  } catch (e) {
    return ValidationResult(true, "");
  }
}
