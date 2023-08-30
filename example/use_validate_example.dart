import 'package:use_validate/use_validate.dart';

void main() {
  var name = "Faraj Shuaib";
  print(validate(value: name, validationRules: [FieldRule.required, FieldRule.name]));
}
