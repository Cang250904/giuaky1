import 'package:flutter/material.dart';

class SignUpStep2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step 2: Set Fee and Availability'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set your rates for travelers:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              SizedBox(height: 10),
              ...List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Fee for ${index + 1}-${index + 3} Travelers',
                      prefixIcon: Icon(Icons.monetization_on, color: Colors.teal),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                );
              }),
              SizedBox(height: 20),
              Text(
                'Set your available time:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Start Time',
                  prefixIcon: Icon(Icons.schedule, color: Colors.teal),
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'End Time',
                  prefixIcon: Icon(Icons.schedule, color: Colors.teal),
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Finish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
