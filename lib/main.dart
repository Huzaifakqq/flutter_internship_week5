import 'package:flutter/material.dart';
import 'package:week_5_firebase_authentication_and_database/login_signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AuthScreen());
  }
}
