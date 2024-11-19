    import 'package:flutter/material.dart';
import 'current_trips_screen.dart';
import 'next_trips_screen.dart';
import 'past_trips_screen.dart';
import 'wish_list_screen.dart';

class MyTripsScreen extends StatefulWidget {
  const MyTripsScreen({super.key});

  @override
  _MyTripsScreenState createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const CurrentTripsScreen(),
    const NextTripsScreen(),
    const PastTripsScreen(),
    const WishListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Trips'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flight_takeoff),
            label: 'Current',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.next_plan),
            label: 'Next',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Past',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wish List',
          ),
        ],
      ),
    );
  }
}
