import 'package:flutter/material.dart';
import 'package:rhsgrad/screens/login_screens/loginpage.dart';
import 'package:rhsgrad/screens/profile_screens/profilescreen.dart';
import 'package:rhsgrad/screens/profile_screens/tempy.dart';
import 'package:rhsgrad/screens/settings_screen/mainsettings.dart';

import 'screens/settings_screen/Account Details/Username Settings.dart';

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
        // Define other routes here
      },
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
    );
  }
}

