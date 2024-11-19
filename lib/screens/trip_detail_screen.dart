import 'package:flutter/material.dart';
import 'payment_method_screen.dart';

class TripDetailScreen extends StatelessWidget {
  const TripDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/hanoi.png'),
            const SizedBox(height: 16),
            const Text('Hanoi, Vietnam', style: TextStyle(fontSize: 18)),
            const Text('Date: Feb 2, 2020', style: TextStyle(fontSize: 16)),
            const Text('Time: 8:00AM - 10:00AM', style: TextStyle(fontSize: 16)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentMethodScreen()),
                );
              },
              child: const Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}
