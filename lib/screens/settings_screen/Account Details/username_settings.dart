import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_settings.dart';


class UserNameSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsWidget(
      mainIcon: Iconsax.personalcard,
      details: 'You can only change your name\nonce in a month',
      pageTitle: 'Change Username',
      leadingIcon: Iconsax.arrow_circle_left5,
      settingName: 'Username',
      hintText: 'Enter your new username',
      onTap: (context) {
        // Handle save changes action here
      },
    );
  }
}
