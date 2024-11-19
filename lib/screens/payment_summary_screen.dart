import 'package:flutter/material.dart';
import 'confirmation_screen.dart';

class PaymentSummaryScreen extends StatelessWidget {
  const PaymentSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Summary'),
      ),
      body: Column(
        children: [
          const Text('Total: \$20.00'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConfirmationScreen()),
              );
            },
            child: const Text('Check Out'),
          ),
        ],
      ),
    );
  }
}
