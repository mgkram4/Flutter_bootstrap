import 'package:flutter/material.dart';

class MotivationalQuotesPage extends StatelessWidget {
  const MotivationalQuotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motivational Quotes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Motivational Quotes',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            QuoteCard(
              author: 'Steve Jobs',
              quote:
                  'Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do.',
            ),
            QuoteCard(
              author: 'Oprah Winfrey',
              quote:
                  'The biggest adventure you can take is to live the life of your dreams.',
            ),
            QuoteCard(
              author: 'Albert Einstein',
              quote:
                  'Life is like riding a bicycle. To keep your balance, you must keep moving.',
            ),
            // Add more quotes as needed
          ],
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final String author;
  final String quote;

  const QuoteCard({
    Key? key,
    required this.author,
    required this.quote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '"$quote"',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '- $author',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
