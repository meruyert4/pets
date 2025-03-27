import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PetsApp());
}

class PetsApp extends StatelessWidget {
  const PetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
