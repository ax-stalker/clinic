import 'package:clinic/login_signup_screen.dart';
import 'package:clinic/main_page.dart';
import 'package:clinic/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:clinic/home_page.dart';
import 'package:clinic/pharmacy_screen.dart';
import 'package:clinic/profile_screen.dart';
import 'package:clinic/splash_screen.dart';
import 'package:clinic/login_screen.dart';
 // Import the new screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/mainPage': (context) => MainPage(),
        // Add other routes if needed
      },
    );
  }
}