import 'package:flutter/material.dart';

class HowToUsePage extends StatelessWidget {
  const HowToUsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to Use'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the How to Use page!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '1. Login:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '   - Open the app and go to the Login page.',
            ),
            Text(
              '   - Enter your email and password to sign in.',
            ),
            SizedBox(height: 20),
            Text(
              '2. Manage Notes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '   - After logging in, you will be directed to the Home page.',
            ),
            Text(
              '   - Tap the "+" button to add a new note.',
            ),
            Text(
              '   - To edit a note, tap on the note you want to modify.',
            ),
            Text(
              '   - To delete a note, swipe left on the item and tap the delete icon.',
            ),
            SizedBox(height: 20),
            Text(
              '3. Read Motivational Quotes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '   - Motivational quotes are displayed on the Home page.',
            ),
            SizedBox(height: 20),
            Text(
              '4. Financial Tips:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '   - Navigate to the "Financial Advice" section.',
            ),
            Text(
              '   - Explore various financial tips for better money management.',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
