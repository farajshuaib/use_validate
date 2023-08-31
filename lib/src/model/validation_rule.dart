import 'package:use_validate/use_validate.dart';

class ValidationRule {
  final String? pattern;
  final String? errorMessage;

  ValidationRule({required this.pattern, this.errorMessage});
}
