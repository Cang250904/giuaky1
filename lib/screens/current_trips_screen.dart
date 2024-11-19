import 'package:flutter/material.dart';
import '../widgets/trip_card.dart';
import 'trip_detail_screen.dart';

class CurrentTripsScreen extends StatelessWidget {
  const CurrentTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TripCard(
            image: Image.asset('images/anh1.jpg'),
            tripName: 'Dragon Bridge Trip',
            location: 'Da Nang, Vietnam',   
            time: '13:00 - 15:00',
            date: 'Jan 30, 2020',
            buttonText: 'Mark Finished',
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
