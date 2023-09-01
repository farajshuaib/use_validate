import 'package:use_validate/use_validate.dart';

void main() {
  var name = "Faraj Shuaib";
  print(validate(value: name, validationRules: [
    ValidationRule(pattern: FieldRule.required),
    ValidationRule(
        pattern: FieldRule.name, errorMessage: "please enter a valid name"),
  ]));
}
