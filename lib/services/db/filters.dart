import 'package:sembast/sembast.dart';

class FilterKeys {
  static const String date = 'date';
}

mixin CustomFilters {
  Filter getDateEqualsFilter(DateTime date, {String key = FilterKeys.date}) =>
      Filter.equals(key, date.toIso8601String());
}
