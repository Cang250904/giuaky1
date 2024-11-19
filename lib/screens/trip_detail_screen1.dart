import 'package:flutter/material.dart';
import '../widgets/detail_row.dart';

class TripDetailScreen extends StatelessWidget {
  const TripDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thông tin hướng dẫn viên
          const Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/Toi.jpg'),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nguyễn Đình Cang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Finding a Guide for the trip in',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Danang, Vietnam',
                    style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Thông tin chi tiết chuyến đi
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailRow(label: 'Date', value: 'Feb 2, 2020'),
                const DetailRow(label: 'Time', value: '8:00 - 10:00'),
                const DetailRow(label: 'Number of Travelers', value: '2'),
                const DetailRow(label: 'Price', value: '\$10/hour'),
                const SizedBox(height: 8),
                const Text('Guide\'s Language', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Wrap(
                  spacing: 8,
                  children: [
                    Chip(label: Text('Vietnamese')),
                    Chip(label: Text('Korean')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
