class ValidationRule {
  // pattern that will be taken from FieldRule class that has user sent
  final String? pattern;
  // error message that will be taken from the user to be displayed
  final String? errorMessage;

  ValidationRule({required this.pattern, this.errorMessage});
}
