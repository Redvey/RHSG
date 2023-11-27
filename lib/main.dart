import 'package:flutter/material.dart';
import 'package:rhsgrad/screens/nav_screens/events_page.dart';
import 'package:rhsgrad/screens/nav_screens/notification_page.dart';
import 'package:rhsgrad/screens/settings_screen/Account%20Details/email_settings.dart';
import 'package:rhsgrad/screens/settings_screen/mainsettings.dart';

import 'screens/settings_screen/Account Details/username_settings.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/username': (context) => UsernameSettings(),
        '/email':(context)=> EmailSettings(),
        // Define other routes here
      },
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

