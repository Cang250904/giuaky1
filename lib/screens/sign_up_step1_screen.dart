import 'package:flutter/material.dart';

class SignUpStep1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.teal,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Text(
                    'Welcome, Tuan!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Please finish your profile so that Travelers can find you easily!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Background Info',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                      SizedBox(width: 10),
                      Text(
                        'Fee & Time',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Form Fields
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Address
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'City             Country',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Phone Number
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixText: '+84   ',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Upload Guide License
                  UploadField(
                    label: 'Guide License',
                  ),

                  // Upload Identity Card
                  UploadField(
                    label: 'Identity Card',
                  ),

                  // Languages
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Languages',
                      hintText: 'Languages you can use to guide',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Introduction
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Introduction',
                      hintText: 'Short introduction about yourself',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Video Introduction (Optional)
                  UploadField(
                    label: 'Video Introduction (Optional)',
                  ),

                  SizedBox(height: 30),
                  // Next Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Next step action
                      },
                      child: Text('NEXT'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UploadField extends StatelessWidget {
  final String label;

  const UploadField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Upload Photo',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
