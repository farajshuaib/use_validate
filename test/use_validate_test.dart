import 'package:test/test.dart';
import 'package:use_validate/src/model/validation_rule.dart';
import 'package:use_validate/use_validate.dart';

void main() {
  group('A group of general tests', () {
    test('validate required', () {
      expect(validate(value: "Faraj Shuaib", validationRules: [ValidationRule(pattern: FieldRule.required)]).isValid, isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required)]).isValid, isFalse);
    });
    test('validate user name', () {
      expect(validate(value: "Faraj Shuaib", validationRules: [ValidationRule(pattern: FieldRule.required)]).isValid, isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.name)]).isValid, isFalse);
    });

    test('validate email', () {
      expect(
          validate(value: "farajshuaib@gmail.com", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.email)])
              .isValid,
          isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.email)]).isValid, isFalse);
      expect(validate(value: "farajshuaib", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.email)]).isValid,
          isFalse);
    });

    test('validate password', () {
      expect(
          validate(value: "0StrongPassword0", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.password)])
              .isValid,
          isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.password)]).isValid, isFalse);
      expect(
          validate(value: "weekPassword", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.password)]).isValid,
          isFalse);
    });

    test('validate phone', () {
      expect(validate(value: "0599999999", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phone)]).isValid,
          isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phone)]).isValid, isFalse);
      expect(validate(value: "059999999", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phone)]).isValid,
          isFalse);
    });

    test('validate arabic', () {
      expect(validate(value: "فرج", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.arabic)]).isValid, isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.arabic)]).isValid, isFalse);
      expect(
          validate(value: "Faraj", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.arabic)]).isValid, isFalse);
    });

    test('validate english', () {
      expect(
          validate(value: "Faraj", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.english)]).isValid, isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.english)]).isValid, isFalse);
      expect(
          validate(value: "فرج", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.english)]).isValid, isFalse);
    });

    test('validate phoneWithCode', () {
      expect(
          validate(value: "+970599999999", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phoneWithCode)])
              .isValid,
          isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phoneWithCode)]).isValid,
          isFalse);
      expect(
          validate(value: "0599999999", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.phoneWithCode)])
              .isValid,
          isFalse);
    });

    test('validate number', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.number)]).isValid, isTrue);
      expect(validate(value: "", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.number)]).isValid, isFalse);
      expect(
          validate(value: "123.5", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.number)]).isValid, isFalse);
    });

    test('validate date', () {
      expect(validate(value: "2021-01-01", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.date)]).isValid,
          isTrue);
      expect(validate(value: "2021/01/01", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.date)]).isValid,
          isTrue);
      expect(validate(value: "342353245", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.date)]).isValid,
          isFalse);
    });

    test('validate decimal', () {
      expect(
          validate(value: "123.5", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.decimal)]).isValid, isTrue);
      expect(
          validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.decimal)]).isValid, isFalse);
    });

    test('validate negativeNumbers', () {
      expect(
          validate(value: "-123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.negativeNumbers)]).isValid,
          isTrue);
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.negativeNumbers)]).isValid,
          isFalse);
    });

    test('validate moreThanZero', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.moreThanZero)]).isValid,
          isTrue);
      expect(validate(value: "-123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.moreThanZero)]).isValid,
          isFalse);
    });

    test('validate lessThanZero', () {
      expect(validate(value: "-123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.lessThanZero)]).isValid,
          isTrue);
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.lessThanZero)]).isValid,
          isFalse);
    });

    test('validate match', () {
      expect(
          validate(value: "abc", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.match(r"^[A-Za-z]{3,}$"))])
              .isValid,
          isTrue);
      expect(
          validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.match(r"^[A-Za-z]{3,}$"))])
              .isValid,
          isFalse);
    });

    test('validate min', () {
      expect(validate(value: "8", validationRules: [ValidationRule(pattern: FieldRule.min(5))]).isValid, isTrue);
      expect(validate(value: "2", validationRules: [ValidationRule(pattern: FieldRule.min(5))]).isValid, isFalse);
    });

    test('validate max', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.max(3))]).isValid, isTrue);
      expect(
          validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.max(3))]).isValid, isFalse);
    });

    test('validate between', () {
      expect(validate(value: "50", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.between(1, 100))]).isValid,
          isTrue);
      expect(
          validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.between(1, 100))]).isValid,
          isFalse);
    });

    test('validate max length', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.maxLength(3))]).isValid,
          isTrue);
      expect(validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.maxLength(3))]).isValid,
          isFalse);
    });

    test('validate min length', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.minLength(3))]).isValid,
          isTrue);
      expect(validate(value: "12", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.minLength(3))]).isValid,
          isFalse);
    });

    test('validate url', () {
      expect(
          validate(value: "https://www.google.com", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.url)])
              .isValid,
          isTrue);
      expect(validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.url)]).isValid, isFalse);
    });

    test('validate ip', () {
      expect(
          validate(value: "https://www.google.com", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ip)])
              .isValid,
          isTrue);
      expect(validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ip)]).isValid, isFalse);
    });

    test('validate ipv4', () {
      expect(
          validate(value: "https://www.google.com", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ipv4)])
              .isValid,
          isTrue);
      expect(validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ipv4)]).isValid, isFalse);
    });

    test('validate ipv6', () {
      expect(
          validate(value: "https://www.google.com", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ipv6)])
              .isValid,
          isTrue);
      expect(validate(value: "1234", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.ipv6)]).isValid, isFalse);
    });

    test('validate positiveNumbers', () {
      expect(validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbers)]).isValid,
          isTrue);
      expect(
          validate(value: "-123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbers)]).isValid,
          isFalse);
    });

    test('validate positiveNumbersWithZero', () {
      expect(
          validate(value: "123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbersWithZero)])
              .isValid,
          isTrue);
      expect(
          validate(value: "-123", validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbersWithZero)])
              .isValid,
          isFalse);
    });

    test('validate positiveNumbersWithDecimal', () {
      expect(
          validate(
              value: "123.5",
              validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbersWithDecimal)]).isValid,
          isTrue);
      expect(
          validate(
              value: "-123.5",
              validationRules: [ValidationRule(pattern: FieldRule.required), ValidationRule(pattern: FieldRule.positiveNumbersWithDecimal)]).isValid,
          isFalse);
    });
  });
}
