import '../validation_types.dart';

extension ValidationExtensions on FieldRule {
  String get error {
    switch (this) {
      case FieldRule.email:
        return "Invalid email";
      case FieldRule.password:
        return "Invalid password";
      case FieldRule.name:
        return "Invalid name";
      case FieldRule.phone:
        return "Invalid phone number";
      case FieldRule.required:
        return "this filed is required";
      case FieldRule.arabic:
        return "must contain only arabic letters";
      case FieldRule.english:
        return "must contain only english letters";
      case FieldRule.phoneWithCode:
        return "Invalid phone number";
      case FieldRule.number:
        return "Invalid number";
      case FieldRule.date:
        return "Invalid date";
      case FieldRule.decimal:
        return "Invalid decimal";
      case FieldRule.negativeNumbers:
        return "Invalid number";
      case FieldRule.moreThanZero:
        return "Invalid number";

      default:
        return "";
    }
  }
}
