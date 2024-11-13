import 'package:flutter/material.dart';
import 'screens/start_screen.dart'; // Import StartScreen

void main() {
  runApp(PixieApp());
}

class PixieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixie',
      theme: ThemeData(
        primaryColor: Colors.brown[800], // Customize as needed
        scaffoldBackgroundColor: Colors.brown[50], // Customize as needed
      ),
      home: StartScreen(), // Set StartScreen as the home screen
    );
  }
}
