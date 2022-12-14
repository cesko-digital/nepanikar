import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

String _platformLocale = Platform.localeName.split('_').firstOrNull ?? 'en';

final initialLocale = Locale(
  AppLocalizations.supportedLocales.contains(Locale(_platformLocale)) ? _platformLocale : 'en',
);

// TODO: l10n
String pluralYears(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Rok',
    few: 'Roky',
    other: 'Roků',
    locale: Localizations.localeOf(context).languageCode,
  );
}

String pluralMonths(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Měsíc',
    few: 'Měsíce',
    other: 'Měsíců',
    locale: Localizations.localeOf(context).languageCode,
  );
}

String pluralDays(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Den',
    few: 'Dny',
    other: 'Dní',
    locale: Localizations.localeOf(context).languageCode,
  );
}

String pluralHours(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Hodina',
    few: 'Hodiny',
    other: 'Hodin',
    locale: Localizations.localeOf(context).languageCode,
  );
}

String pluralMinutes(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Minuta',
    few: 'Minuty',
    other: 'Minut',
    locale: Localizations.localeOf(context).languageCode,
  );
}

String pluralSeconds(
  BuildContext context, {
  required int value,
}) {
  return Intl.plural(
    value,
    one: 'Sekunda',
    few: 'Sekundy',
    other: 'Sekund',
    locale: Localizations.localeOf(context).languageCode,
  );
}

extension LocalizationTextExtractor on String {
  List<String> extractToItems() {
    return split('\n').map((line) => line.trim()).where((line) => line.isNotEmpty).toList();
  }
}
