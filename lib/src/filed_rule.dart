class FieldRule {
  // it's check if the value is empty or not
  static String get required {
    return r".{1,}";
  }

  // it's check if the value is valid email or not
  static String get email {
    return r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  }

  // it's check if the value is valid password or not
  static String get password {
    return r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,16}$";
  }

  // it's check if the value is valid username or not
  static String get name {
    return r".{3,}";
  }

  // it's check if the value is valid phone number or not (only numbers) and the length is 10
  static String get phone {
    return r"^[0-9]{10,10}$";
  }

  // it's check if the value contains only arabic letters and the length is more than 3
  static String get arabic {
    return r"^[\u0621-\u064A\u0660-\u0669 ]{3,}$";
  }

  // it's check if the value contains only english letters and the length is more than 3
  static String get english {
    return r"^[A-Za-z]{3,}$";
  }

  // arabic with numbers and special characters
  static String get arabicWithNumbers {
    return r"^[\u0621-\u064A\u0660-\u0669 0-9\.\,\-\_\+\=\*\&\^\%\$\#\@\!\~\`\(\)\{\}\[\]\:\;\'\<\>\?\/\|]{3,}$";
  }

  // english with numbers and special characters
  static String get englishWithNumbers {
    return r"^[A-Za-z 0-9\.\,\-\_\+\=\*\&\^\%\$\#\@\!\~\`\(\)\{\}\[\]\:\;\'\<\>\?\/\|]{3,}$";
  }

  // arabic with english and numbers and special characters
  static String get arabicWithEnglishAndNumbers {
    return r"^[\u0621-\u064A\u0660-\u0669 A-Za-z 0-9\.\,\-\_\+\=\*\&\^\%\$\#\@\!\~\`\(\)\{\}\[\]\:\;\'\<\>\?\/\|]{3,}$";
  }

  // phone number with country code
  static String get phoneWithCode {
    return r"^\+[0-9]{12,12}$";
  }

  // only numbers
  static String get number {
    return r"^[0-9]{1,}$";
  }

  // only dates
  static String get date {
    return r"(19|20)[0-9]{2}[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])";
  }

  static String get decimal {
    return r"^[0-9]+\.[0-9]+$";
  }

  static String get negativeNumbers {
    return r"^[-][1-9]\d*$";
  }

  static String get moreThanZero {
    return r"^[1-9]\d*$";
  }

  static String get lessThanZero {
    return r"^[-][1-9]\d*$";
  }

  static String get positiveNumbers {
    return r"^[1-9]\d*$";
  }

  static String get positiveNumbersWithZero {
    return r"^[0-9]\d*$";
  }

  static String get positiveNumbersWithDecimal {
    return r"^[0-9]+\.[0-9]+$";
  }

  static String get positiveNumbersWithZeroAndDecimal {
    return r"^[0-9]+\.[0-9]+$";
  }

  static String get url {
    return r"^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?$";
  }

  static String get ip {
    return r"^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?$";
  }

  static String get ipv4 {
    return r"^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?$";
  }

  static String get ipv6 {
    return r"^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?$";
  }

  static String get macAddress {
    return r"^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$";
  }

  static String get hexadecimal {
    return r"^#?([a-f0-9]{6}|[a-f0-9]{3})$";
  }

  static String get creditCard {
    return r"^((4\d{3})|(5[1-5]\d{2})|(6011)|(7\d{3}))-?\d{4}-?\d{4}-?\d{4}|3[4,7]\d{13}$";
  }

  static String get base64 {
    return r"^[a-zA-Z0-9\/\r\n+]*={0,2}$";
  }

  static String get md5 {
    return r"^[a-f0-9]{32}$";
  }

  static String get ascii {
    return r"^[\x00-\x7F]+$";
  }

  static String get uuid {
    return r"^[a-f\d]{8}(-[a-f\d]{4}){4}[a-f\d]{8}$";
  }

  static String get mongoId {
    return r"^[0-9a-fA-F]{24}$";
  }

  static String get iso8601 {
    return r"^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}([+-]\d{2}:\d{2}|Z)$";
  }

  static String get bIC {
    return r"^[A-Za-z]{4}[A-Za-z]{2}\w{2}(\w{3})?$";
  }

  static String get lAT {
    return r"^\d{5}(-\d{4})?$";
  }

  static String get uRLSearchParams {
    return r"^[a-zA-Z0-9-._~:\/\?#\[\]@!$&'()*+,;=]+$";
  }

  static String get dataURI {
    return r"^data:.+\/(.+);base64,(.*)$";
  }

  static String get magnetURI {
    return r"^magnet:\?xt=urn:[a-z0-9]+:[a-z0-9]{32,40}&dn=.+&tr=.+$";
  }

  static String get latitudeLongitude {
    return r"^\(?[+-]?(90(\.0+)?|[1-8]?\d(\.\d+)?), ?[+-]?(180(\.0+)?|1[0-7]\d(\.\d+)?|\d{2}(\.\d+)?)\)?$";
  }

  static String get sSIN {
    return r"^\d{3}-\d{2}-\d{4}$";
  }

  static String get gUID {
    return r"^\{?[a-fA-F0-9]{8}-?[a-fA-F0-9]{4}-?4[a-fA-F0-9]{3}-?[89abAB][a-fA-F0-9]{3}-?[a-fA-F0-9]{12}\}?$";
  }

  static String get ePP {
    return r"^[0-9]{6}$";
  }

  static String get eAN {
    return r"^(?:[0-9]{8}|[0-9]{13})$";
  }

  static String get sKU {
    return r"^[a-zA-Z0-9]{3,}$";
  }

  static String get iSO31661Alpha2 {
    return r"^[A-Z]{2}$";
  }

  static String get iSO31661Alpha3 {
    return r"^[A-Z]{3}$";
  }

  static String get iSO4217 {
    return r"^[A-Z]{3}$";
  }

  static String get iSO8601Duration {
    return r"^P(?=.)((\d+)Y)?((\d+)M)?((\d+)W)?((\d+)D)?(T(?=.)((\d+)H)?((\d+)M)?((\d+)(\.\d+)?S)?)?$";
  }

  static String get iSO8601Week {
    return r"^[0-9]{4}-W(0[1-9]|[1-4][0-9]|5[0-3])$";
  }

  static String get semVer {
    return r"^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$";
  }

  static String get iSO8601OrdinalDate {
    return r"^[0-9]{4}-[0-9]{3}$";
  }

  static String get iSO8601OrdinalDateTime {
    return r"^[0-9]{4}-[0-9]{3}T[0-9]{2}(:[0-9]{2}){2}(\.[0-9]+)?(Z|[+-][0-9]{2}(:[0-9]{2})?)$";
  }

  static String get iSO8601FullDate {
    return r"^[0-9]{4}-[0-9]{2}-[0-9]{2}$";
  }

  static String get iSO8601FullDateTime {
    return r"^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}(:[0-9]{2}){2}(\.[0-9]+)?(Z|[+-][0-9]{2}(:[0-9]{2})?)$";
  }

  static String get iSO8601Time {
    return r"^([01]\d|2[0-3]):?([0-5]\d)(:?([0-5]\d)(\.\d{1,3})?)?$";
  }

  static String get iSO8601TimeNoSec {
    return r"^([01]\d|2[0-3]):?([0-5]\d)$";
  }

  static String get iSO8601TimeSeconds {
    return r"^([01]\d|2[0-3]):?([0-5]\d):?([0-5]\d)$";
  }

  static String get iSO8601TimeMillis {
    return r"^([01]\d|2[0-3]):?([0-5]\d):?([0-5]\d)\.\d{1,3}$";
  }

  static String get iSO8601TimeOffset {
    return r"^([01]\d|2[0-3]):?([0-5]\d)(:?([0-5]\d)(\.\d{1,3})?)?(Z|[+-][01]\d:?[0-5]\d)$";
  }

  static String get iSO8601TimeOffsetNoSec {
    return r"^([01]\d|2[0-3]):?([0-5]\d)(Z|[+-][01]\d:?[0-5]\d)$";
  }

  static String get iSO8601TimeOffsetSeconds {
    return r"^([01]\d|2[0-3]):?([0-5]\d):?([0-5]\d)(Z|[+-][01]\d:?[0-5]\d)$";
  }

  static String get iSO8601TimeOffsetMillis {
    return r"^([01]\d|2[0-3]):?([0-5]\d):?([0-5]\d)\.\d{1,3}(Z|[+-][01]\d:?[0-5]\d)$";
  }

  static String get iSO8601WeekDate {
    return r"^[0-9]{4}-W(0[1-9]|[1-4][0-9]|5[0-3])-([1-7])$";
  }

  static String get iSO8601WeekDateTime {
    return r"^[0-9]{4}-W(0[1-9]|[1-4][0-9]|5[0-3])-([1-7])T[0-9]{2}(:[0-9]{2}){2}(\.[0-9]+)?(Z|[+-][0-9]{2}(:[0-9]{2})?)$";
  }

  static String get iSO8601WeekDateTimeNoSec {
    return r"^[0-9]{4}-W(0[1-9]|[1-4][0-9]|5[0-3])-([1-7])T[0-9]{2}(:[0-9]{2}){2}$";
  }

  static String get passportId {
    return r"^[A-PR-WY][1-9]\d\s?\d{4}[1-9]$";
  }

  static String get hSL {
    return r"^hsl\(\s*(\d+)\s*,\s*(\d+)%\s*,\s*(\d+)%\s*\)$";
  }

  static String get hSLA {
    return r"^hsla\(\s*(\d+)\s*,\s*(\d+)%\s*,\s*(\d+)%\s*,\s*(0|1|0?\.\d+)\s*\)$";
  }

  static String get libyanNID {
    return r'^[1]{1}[1]{1}[9]{1}[0-9]{9}|[2]{1}[1]{1}[9]{1}[0-9]{9}|[1]{1}[2]{1}[0]{1}[0-9]{9}|[2]{1}[2]{1}[0]{1}[0-9]{9}$';
  }

  static String get madarPhone {
    return r"^9[1]{1}[0-9]{7}$";
  }

  static String get libyanPhone {
    return r"^9[1,2,4,5]{1}[0-9]{7}$";
  }

  static String get libyanaPhone {
    return r"^9[2,4]{1}[0-9]{7}$";
  }

  static String get lttPhone {
    return r"^9[5]{1}[0-9]{7}$";
  }

  static String match(String value) {
    return value;
  }

  static String max(int maxValue) {
    String regex = r'^(?:[1-9]|maxValue)$';

    regex = regex.replaceFirst('maxValue', maxValue.toString());

    return regex;
  }

  static String min(int minValue) {
    String regex = r'^(?!minValue$)\d{2,}$';

    regex = regex.replaceFirst('minValue', minValue.toString());

    return regex;
  }

  static String between(int min, int max) {
    String regex = r'^[min,max]$';
    regex = regex.replaceFirst('min', min.toString());
    regex = regex.replaceFirst('max', max.toString());

    return regex;
  }

  static String betweenDecimal(double min, double max) {
    String regex = r'^[0-9]+$'; // Basic regex pattern for numeric values

    regex = r'^[1-9][0-9]{0,}$|^${min}-${max}$';
    regex = regex.replaceFirst('min', min.toString());
    regex = regex.replaceFirst('max', max.toString());

    return regex;
  }

  static String maxLength(int value) {
    final regex = r"^.{0,value}$";
    return regex.replaceFirst('value', value.toString());
  }

  static String minLength(int value) {
    final regex = r"^.{value,}$";
    return regex.replaceFirst('value', value.toString());
  }
}
