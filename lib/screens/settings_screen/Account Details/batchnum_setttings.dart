import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/dob_settings.dart';

class BatchNum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DateOfBirthSettings(
      mainIcon: Icons.school,
      details: 'You can change your birthday once.',
      pageTitle: 'Change Batch Number',
      leadingIcon: Iconsax.arrow_circle_left5,
      hintText: 'Enter your Batch Number',
      onTap: (context) {
        // Handle save changes action here
      },
    );
  }
}