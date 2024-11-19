import 'package:flutter/material.dart';
import '../widgets/trip_card.dart';

class PastTripsScreen extends StatelessWidget {
  const PastTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TripCard(
            image: Image.asset('images/banner.jpg'),
            tripName: 'Dragon Bridge Trip',
            location: 'Da Nang, Vietnam',
            time: '1:00PM - 3:00PM',
            date: 'Jan 30, 2020',
            price: '\$10.00',
            showButton: false,
          ),
          TripCard(
            image: Image.asset('images/anh6.png'),
            tripName: 'Ban Gioc Waterfall',
            location: 'Cao Bang, Vietnam',
            time: '9:00AM - 12:00PM',
            date: 'Jan 25, 2020',
            price: '\$15.00',
            showButton: false,
          ),
        ],
      ),
    );
  }
}
