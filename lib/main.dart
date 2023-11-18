import 'package:flutter/material.dart';
import 'package:rhsgrad/screens/login_screens/loginpage.dart';
import 'package:rhsgrad/screens/nav_screens/donate_page.dart';

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
      home: DonatePage(),
    );
  }
}

