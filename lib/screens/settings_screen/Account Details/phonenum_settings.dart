import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/account_settings.dart';


class PhoneNumSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsWidget(
      mainIcon: Icons.phone,
      details: 'Your Phone No. has been linked to your\n account. You can change it below.',
      pageTitle: 'Change Phone Number',
      leadingIcon: Iconsax.arrow_circle_left5,
      settingName: 'Phone number',
      hintText: 'Enter your new phone number',
      onTap: (context) {
        // Handle save changes action here
      },
    );
  }
}
