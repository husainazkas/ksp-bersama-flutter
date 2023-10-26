/// Format time into HH:mm:ss
String formattedTime(int? timeInSeconds) {
  if (timeInSeconds == null) return '-';

  final buffer = StringBuffer();

  final hours = timeInSeconds ~/ (60 * 60);
  buffer.write('$hours'.padLeft(2, '0'));
  buffer.write(':');

  final minutes = (timeInSeconds ~/ 60) - (hours * 60);
  buffer.write('$minutes'.padLeft(2, '0'));
  buffer.write(':');

  final seconds = timeInSeconds - (minutes * 60) - (hours * 60 * 60);
  buffer.write('${seconds <= 0 ? 0 : seconds}'.padLeft(2, '0'));
  return buffer.toString();
}

/// Convert dynamic data to specific
/// type in [T]. If not it will return
/// null.
T? convertType<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

/// [convertType] but for [List] type.
///
/// Dart doesn't know type inside generic type <T> of [List]
/// unless it defined before compile.
///
/// Don't put generic type inside generic type,
/// like `convertListType<List<String>>`.
List<T> convertListType<T>(dynamic value) {
  if (value is! List) {
    return <T>[];
  }

  final realValue = value.whereType<T>().toList();
  return realValue;
}

/// [convertType] but for [Map] type.
///
/// Dart doesn't know type inside generic type <K, V> of [Map]
/// unless it defined before compile.
///
/// Don't put generic type inside generic type,
/// like `convertMapType<String, List<String>>`.
Map<K, V> convertMapType<K, V>(dynamic value) {
  if (value is! Map) {
    return <K, V>{};
  }

  final realValue = <K, V>{};
  for (final entry in value.entries) {
    final key = entry.key;
    final value = entry.value;
    if (key is K && value is V) {
      realValue[key] = value;
    }
  }

  return realValue;
}

extension StringUtil on String {
  String toUpperFirstChar() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String toUpperFirstCharEachWord() {
    return split(' ').map((e) => e.toUpperFirstChar()).join(' ');
  }

  String toAbbreviation() {
    return split(' ').map((e) => e[0]).join().toUpperCase();
  }

  String truncate([int? maxLength]) {
    return '${substring(0, maxLength).trim()}\u2026';
  }
}
