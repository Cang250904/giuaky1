import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip and Offer',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TripAndOfferScreen(),
    );
  }
}

class TripAndOfferScreen extends StatefulWidget {
  const TripAndOfferScreen({super.key});

  @override
  _TripAndOfferScreenState createState() => _TripAndOfferScreenState();
}

class _TripAndOfferScreenState extends State<TripAndOfferScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip and Offer'),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          TripDetailScreen(), // Màn hình chi tiết chuyến đi
          SendOfferScreen(),  // Màn hình gửi offer
          FiltersScreen(),    // Màn hình bộ lọc
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageController.hasClients ? _pageController.page?.toInt() ?? 0 : 0,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Trip Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: 'Send Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list),
            label: 'Filters',
          ),
        ],
      ),
    );
  }
}

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Toggle giữa "Finding a Guide" và "Tours"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text('Finding a Guide'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Tours'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Ngày
          const TextField(
            decoration: InputDecoration(
              labelText: 'Date',
              hintText: 'mm/dd/yy',
              prefixIcon: Icon(Icons.calendar_today),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          // Thời gian
          const TextField(
            decoration: InputDecoration(
              labelText: 'Time',
              hintText: '00:00AM',
              prefixIcon: Icon(Icons.access_time),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          // Ngôn ngữ hướng dẫn viên
          const Text(
            "Guide's Language",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Wrap(
            spacing: 8,
            children: [
              Chip(label: Text('Vietnamese')),
              Chip(label: Text('English')),
              Chip(label: Text('Korean')),
              Chip(label: Text('Spanish')),
              Chip(label: Text('French')),
            ],
          ),
          const SizedBox(height: 16),

          // Phí hướng dẫn
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Fee',
              prefixIcon: Icon(Icons.attach_money),
              suffixText: '\$/hour',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),

          // Nút "APPLY FILTERS"
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Hành động khi nhấn "APPLY FILTERS"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('APPLY FILTERS'),
            ),
          ),
        ],
      ),
    );
  }
}

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
                backgroundImage: AssetImage('images/Toi.jpg'), 
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nguyễn Đình Cang',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Finding a Guide for the trip in',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Danang, Vietnam',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
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
                _buildDetailRow('Date', 'Feb 2, 2020'),
                _buildDetailRow('Time', '8:00 - 10:00'),
                _buildDetailRow('Number of Travelers', '2'),
                _buildDetailRow('Price', '\$10/hour'),
                const SizedBox(height: 8),
                const Text(
                  'Guide\'s Language',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Wrap(
                  spacing: 8,
                  children: [
                    Chip(label: Text('Vietnamese')),
                    Chip(label: Text('Korean')),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Attractions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Wrap(
                  spacing: 8,
                  children: [
                    Chip(
                      avatar: Icon(Icons.place, color: Colors.green),
                      label: Text('Dragon Bridge'),
                    ),
                    Chip(
                      avatar: Icon(Icons.place, color: Colors.green),
                      label: Text('Aisa Park'),
                    ),
                    Chip(
                      avatar: Icon(Icons.place, color: Colors.green),
                      label: Text('My Khe Beach'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

class SendOfferScreen extends StatelessWidget {
  const SendOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Fee input
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

          // Offer input
          TextFormField(
            maxLines: 5,
            decoration: const InputDecoration(
              labelText: 'Your Offer',
              hintText: 'Describe your offer, how you can help Yoo Jin explore Danang city',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 32),

          // Send offer button
          ElevatedButton(
            onPressed: () {
              // Hành động khi nhấn "Send Offer"
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
