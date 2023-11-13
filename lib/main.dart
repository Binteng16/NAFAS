import 'package:flutter/material.dart';
import 'package:iot_tata/pages/login_screen.dart';
import 'package:iot_tata/pages/dashboard.dart';
import 'package:iot_tata/pages/page_profile.dart';
import 'package:iot_tata/pages/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
