import 'package:flutter/material.dart';

class SendOfferScreen extends StatelessWidget {
  const SendOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Your Fee',
              prefixIcon: Icon(Icons.attach_money),
              suffixText: '\$/hour',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            maxLines: 5,
            decoration: const InputDecoration(
              labelText: 'Your Offer',
              hintText: 'Describe your offer, how you can help Yoo Jin explore Danang city',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Offer sent successfully!')),
              );
            },
            child: const Text('SEND OFFER'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
