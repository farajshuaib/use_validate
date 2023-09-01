// this class is used to return the validation result
class ValidationResult {
  // the error message to be displayed
  String message;
  // the validation result
  bool isValid;

  ValidationResult(this.isValid, this.message);
}
