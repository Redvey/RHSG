// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rhsgrad/screens/nav_screens/events_page.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/batchnum_setttings.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/dob_settings.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/email_settings.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/phonenum_settings.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/username_settings.dart';
// import 'package:rhsgrad/screens/settings_screen/Account%20Details/email_settings.dart';
import 'package:rhsgrad/screens/settings_screen/mainsettings.dart';

// import 'screens/settings_screen/Account Details/email_settings.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/username': (context) => UserNameSettings(),
        '/email':(context)=> EmailSettings(),
        '/phone':(context)=> PhoneNumSettings(),
        '/dob':(context)=> DateOfBirth(),
        '/batch':(context)=> BatchNum(),
        // Define other routes here
      },
      debugShowCheckedModeBanner: false,
      home: const SettingsPage(),
    );
  }
}

