const String blankString = '';
const int zeroInt = 0;
const double zeroDouble = 0;

String parseString(dynamic value, {String defaultValue = blankString}) =>
    value is String ? value : (value != null ? value.toString() : '');

double parseDouble(dynamic value, {double defaultValue = zeroDouble}) =>
    value is double
        ? value
        : double.tryParse(value?.toString() ?? '') ?? defaultValue;

int parseInt(dynamic value, {int defaultValue = zeroInt}) => value is int
    ? value
    : int.tryParse(value?.toString() ?? '') ?? defaultValue;

bool parseBool(dynamic value, {bool defaultValue = false}) {
  if (value is bool) {
    return value;
  } else if (value is String) {
    return value == 'true' || value == 'TRUE';
  } else {
    return defaultValue;
  }
}
