import 'package:flutter/material.dart';
import 'trip_detail_screen.dart';
import 'send_offer_screen.dart';
// import 'filters_screen.dart';

class TripAndOfferScreen extends StatefulWidget {
  const TripAndOfferScreen({super.key});

  @override
  _TripAndOfferScreenState createState() => _TripAndOfferScreenState();
}

class _TripAndOfferScreenState extends State<TripAndOfferScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page?.round() != _currentIndex) {
        setState(() {
          _currentIndex = _pageController.page?.round() ?? 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
          TripDetailScreen(),
          SendOfferScreen(),
          // FiltersScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
