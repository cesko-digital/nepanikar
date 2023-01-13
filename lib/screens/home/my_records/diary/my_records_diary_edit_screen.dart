import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nepanikar/app/l10n/ext.dart';
import 'package:nepanikar/screens/home/my_records/diary/my_records_diary_detail_screen.dart';
import 'package:nepanikar/services/db/my_records/diary/my_records_diary_dao.dart';
import 'package:nepanikar/utils/registry.dart';
import 'package:nepanikar/widgets/adaptive_dialog.dart';
import 'package:nepanikar/widgets/diary/diary_edit_content.dart';

class MyRecordsDiaryEditRoute extends GoRouteData {
  const MyRecordsDiaryEditRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MyRecordsDiaryEditScreen(
      // TODO: Do not found page if state extra is null
      diaryRecordRouteExtraData: state.extra! as DiaryRecordRouteExtraData,
    );
  }
}

class MyRecordsDiaryEditScreen extends StatelessWidget {
  const MyRecordsDiaryEditScreen({
    super.key,
    required this.diaryRecordRouteExtraData,
  });

  final DiaryRecordRouteExtraData diaryRecordRouteExtraData;

  MyRecordsDiaryDao get _myRecordsDiaryDao => registry.get<MyRecordsDiaryDao>();

  String get _initialDiaryRecordId => diaryRecordRouteExtraData.diaryRecordId;

  @override
  Widget build(BuildContext context) {
    final analytics = registry.get<FirebaseAnalytics>();
    return DiaryEditContent(
      diaryRecordRouteExtraData: diaryRecordRouteExtraData,
      // TODO: l10n Maťej
      appBarTitle: 'Upravit záznam',
      // TODO: l10n Maťej
      primaryButtonText: 'Uložit',
      onPrimaryButtonTap: (diaryRecord) async {
        // Update an existing diary record.
        final goRouter = GoRouter.of(context);
        await _myRecordsDiaryDao.updateRecord(
          _initialDiaryRecordId,
          updatedDiaryRecord: diaryRecord,
        );
        unawaited(analytics.logEvent(name: 'diary_record_updated'));
        goRouter.pop();
      },
      secondaryButtonText: context.l10n.clear_button,
      onSecondaryButtonTap: () {
        showAdaptiveDialog(
          context,
          description: context.l10n.really_remove,
          onOk: () async {
            // Delete an existing diary record.
            final goRouter = GoRouter.of(context);
            await _myRecordsDiaryDao.deleteRecord(_initialDiaryRecordId);
            unawaited(analytics.logEvent(name: 'diary_record_deleted'));
            // TODO: Use popUntil instead of pop twice
            goRouter.pop();
            goRouter.pop();
          },
          okLabel: context.l10n.mood_help_yes,
          cancelLabel: context.l10n.mood_help_no,
        );
      },
    );
  }
}
