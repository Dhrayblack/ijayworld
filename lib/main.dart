import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const IjayWorldApp());
}

class IjayWorldApp extends StatelessWidget {
  const IjayWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ijay World',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(), 
    );
  }
}