import 'package:flutter/material.dart';
import '../widgets/trip_card.dart';
import 'trip_detail_screen.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TripCard(
            image: Image.asset('images/anh8.jpg'),
            tripName: 'Fansipan Peak',
            location: 'Sapa, Vietnam',
            time: 'Anytime',
            date: 'Wishlist',
            buttonText: 'Book Now',
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
            image: Image.asset('images/anh4.jpg'),
            tripName: 'Phong Nha Cave',
            location: 'Quang Binh, Vietnam',
            time: 'Anytime',
            date: 'Wishlist',
            buttonText: 'Book Now',
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
