import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nepanikar/app/l10n/ext.dart';
import 'package:nepanikar/services/db/user_settings/user_settings_dao.dart';
import 'package:nepanikar/utils/contacts_data_manager.dart';
import 'package:nepanikar/utils/registry.dart';
import 'package:nepanikar/widgets/contacts/phone_contact_tile.dart';
import 'package:nepanikar/widgets/nepanikar_screen_wrapper.dart';
import 'package:nepanikar_contacts_gen/nepanikar_contacts_gen.dart';

class PhoneContactsRoute extends GoRouteData {
  const PhoneContactsRoute();

  ContactsDataManager get _contactsManager => registry.get<ContactsDataManager>();

  UserSettingsDao get _userSettingsDao => registry.get<UserSettingsDao>();

  @override
  Widget build(BuildContext context, _) {
    final locale = _userSettingsDao.locale;
    final phoneContacts = _contactsManager.getContactsFromLocale(locale).phoneContacts;
    return PhoneContactsScreen(phoneContacts: phoneContacts ?? []);
  }
}

class PhoneContactsScreen extends StatelessWidget {
  const PhoneContactsScreen({
    super.key,
    required this.phoneContacts,
  });

  final Iterable<PhoneContact> phoneContacts;

  @override
  Widget build(BuildContext context) {
    return NepanikarScreenWrapper(
      appBarTitle: context.l10n.phone,
      children: phoneContacts.map((contact) => PhoneContactTile(phoneContact: contact)).toList(),
    );
  }
}
