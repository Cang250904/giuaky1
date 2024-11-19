import 'package:flutter/material.dart';
import '../widgets/trip_card.dart';
import 'trip_detail_screen.dart';

class NextTripsScreen extends StatelessWidget {
  const NextTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TripCard(
            image: Image.asset('images/hochiminh.png'),
            tripName: 'Ho Chi Minh Mausoleum',
            location: 'Hanoi, Vietnam',
            time: '10:30AM',
            date: 'Feb 2, 2020',
            buttonText: 'View Details',
            showButton: true,
            onButtonPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TripDetailScreen(),
                ),
              );
            },
          ),
          TripCard(
            image: Image.asset('images/anh7.jpg'),
            tripName: 'Ha Long Bay Cruise',
            location: 'Quang Ninh, Vietnam',
            time: '8:00AM - 6:00PM',
            date: 'Feb 5, 2020',
            buttonText: 'View Details',
            showButton: true,
            onButtonPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TripDetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
