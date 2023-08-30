import 'package:use_validate/use_validate.dart';
import 'package:test/test.dart';

void main() {
  group('A group of general tests', () {
    test('validate user name', () {
      expect(validate(value: "Faraj Shuaib", validationRules: [FieldRule.required, FieldRule.name]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.name]), isFalse);
    });

    test('validate email', () {
      expect(validate(value: "farajshuaib@gmail.com", validationRules: [FieldRule.required, FieldRule.email]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.email]), isFalse);
      expect(validate(value: "farajshuaib", validationRules: [FieldRule.required, FieldRule.email]), isFalse);
    });

    test('validate password', () {
      expect(validate(value: "0StrongPassword0", validationRules: [FieldRule.required, FieldRule.password]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.password]), isFalse);
      expect(validate(value: "weekPassword", validationRules: [FieldRule.required, FieldRule.password]), isFalse);
    });

    test('validate phone', () {
      expect(validate(value: "0599999999", validationRules: [FieldRule.required, FieldRule.phone]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.phone]), isFalse);
      expect(validate(value: "059999999", validationRules: [FieldRule.required, FieldRule.phone]), isFalse);
    });

    test('validate arabic', () {
      expect(validate(value: "فرج", validationRules: [FieldRule.required, FieldRule.arabic]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.arabic]), isFalse);
      expect(validate(value: "Faraj", validationRules: [FieldRule.required, FieldRule.arabic]), isFalse);
    });

    test('validate english', () {
      expect(validate(value: "Faraj", validationRules: [FieldRule.required, FieldRule.english]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.english]), isFalse);
      expect(validate(value: "فرج", validationRules: [FieldRule.required, FieldRule.english]), isFalse);
    });

    test('validate phoneWithCode', () {
      expect(validate(value: "+970599999999", validationRules: [FieldRule.required, FieldRule.phoneWithCode]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.phoneWithCode]), isFalse);
      expect(validate(value: "0599999999", validationRules: [FieldRule.required, FieldRule.phoneWithCode]), isFalse);
    });

    test('validate number', () {
      expect(validate(value: "123", validationRules: [FieldRule.required, FieldRule.number]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.number]), isFalse);
      expect(validate(value: "123.5", validationRules: [FieldRule.required, FieldRule.number]), isFalse);
    });

    test('validate date', () {
      expect(validate(value: "2021-01-01", validationRules: [FieldRule.required, FieldRule.date]), isTrue);
      expect(validate(value: "2021/01/01", validationRules: [FieldRule.required, FieldRule.date]), isTrue);
      expect(validate(value: "342353245", validationRules: [FieldRule.required, FieldRule.date]), isFalse);
    });

    test('validate decimal', () {
      expect(validate(value: "123.5", validationRules: [FieldRule.required, FieldRule.decimal]), isTrue);
      expect(validate(value: "123", validationRules: [FieldRule.required, FieldRule.decimal]), isFalse);
    });

    test('validate negativeNumbers', () {
      expect(validate(value: "-123", validationRules: [FieldRule.required, FieldRule.negativeNumbers]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.negativeNumbers]), isFalse);
      expect(validate(value: "123", validationRules: [FieldRule.required, FieldRule.negativeNumbers]), isFalse);
    });

    test('validate moreThanZero', () {
      expect(validate(value: "123", validationRules: [FieldRule.required, FieldRule.moreThanZero]), isTrue);
      expect(validate(value: "", validationRules: [FieldRule.required, FieldRule.moreThanZero]), isFalse);
      expect(validate(value: "0", validationRules: [FieldRule.required, FieldRule.moreThanZero]), isFalse);
    });
  });
}
