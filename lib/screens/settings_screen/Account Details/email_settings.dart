import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_settings.dart';


class EmailSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsWidget(
      mainIcon: Icons.mail,
      details: 'Your Email has been linked to your\n account. You can change it below.',
      pageTitle: 'Change Email',
      leadingIcon: Iconsax.arrow_circle_left5,
      settingName: 'Email',
      hintText: 'Enter your new email id',
      onTap: (context) {
        // Handle save changes action here
      },
    );
  }
}
