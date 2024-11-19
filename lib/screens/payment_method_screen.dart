import 'package:flutter/material.dart';
import 'payment_summary_screen.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Card Holder\'s Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Card Number'),
            ),
            const Row(
              children: [
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'Expiration Date'))),
                SizedBox(width: 16),
                Expanded(child: TextField(decoration: InputDecoration(labelText: 'CVV'))),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentSummaryScreen()),
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
