import 'package:flutter/material.dart';
import 'package:snapy/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
