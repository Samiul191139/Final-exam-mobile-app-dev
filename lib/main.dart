import 'package:flutter/material.dart';
import 'package:mobail_app_final_sami/pages/activity_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActivityNavigation(),
    );
  }
}

