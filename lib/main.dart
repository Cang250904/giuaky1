import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/sign_up_step1_screen.dart';
import 'screens/sign_up_step2_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guide App',
    theme: ThemeData(
  primarySwatch: Colors.teal,
  fontFamily: 'Roboto',
  scaffoldBackgroundColor: Color(0xFFF8F9FA), // Nền xám nhạt
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white, // Màu nền của TextField
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide.none,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.teal,
      textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
),

      initialRoute: '/',
      routes: {
        '/': (context) => SignInScreen(),
        '/sign-up': (context) => SignUpScreen(),
        '/sign-up-step1': (context) => SignUpStep1Screen(),
        '/sign-up-step2': (context) => SignUpStep2Screen(),
      },
    );
  }
}

