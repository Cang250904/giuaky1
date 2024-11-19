import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final Image image;
  final String tripName;
  final String location;
  final String time;
  final String date;
  final String? price;
  final String? buttonText;
  final bool showButton;
  final VoidCallback? onButtonPressed;

  const TripCard({
    super.key,
    required this.image,
    required this.tripName,
    required this.location,
    required this.time,
    required this.date,
    this.price,
    this.buttonText,
    this.showButton = false,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          image,
          Text(tripName),
          Text(location),
          Text('$time • $date'),
          if (showButton)
            ElevatedButton(
              onPressed: onButtonPressed,
              child: Text(buttonText ?? 'Action'),
            ),
        ],
      ),
    );
  }
}
