import 'package:flutter/material.dart';
import 'screens/my_trips_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trips & Offers',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyTripsScreen(),
    );
  }
}
