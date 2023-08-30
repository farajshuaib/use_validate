import '../validation_types.dart';

extension ValidationExtensions on FieldRule {
  String get value {
    switch (this) {
      case FieldRule.required:
        return r".{1,}";
      case FieldRule.email:
        return r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      case FieldRule.password:
        // more than 8 characters and less than 16 characters and contains at least one number and one capital letter and one small letter
        return r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,16}$";
      case FieldRule.name:
        return r".{3,}";
      case FieldRule.phone:
        return r"^[9]{1}[1,2,4]{1}[0-9]{7,7}$";
      case FieldRule.empty:
        return r".{1,}";
      case FieldRule.arabic:
        return r"^[\u0621-\u064A\u0660-\u0669 ]{3,}$";
      case FieldRule.english:
        return r"^[A-Za-z]{3,}$";
      case FieldRule.phoneWithCode:
        return r"^[+]{1}[9]{1}[6]{1}[0-9]{7,7}$";
      case FieldRule.number:
        return r"^[0-9]{1,}$";
      case FieldRule.date:
        return r"(19|20)[0-9]{2}[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])";
      case FieldRule.decimal:
        return r"^(?=.*[1-9])[0-9]*[.,]?[0-9]{1,3}$";
      case FieldRule.negativeNumbers:
        return r"^[0-9]\d*$";
      case FieldRule.moreThanZero:
        return r"^[1-9]\d*$";
      default:
        return "";
    }
  }
}
