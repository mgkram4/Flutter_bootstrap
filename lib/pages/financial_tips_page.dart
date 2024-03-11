import 'package:flutter/material.dart';

class FinancialTipsPage extends StatelessWidget {
  const FinancialTipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Tips'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Financial Tips',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TipCard(
              title: 'Create a Budget',
              description:
                  'Establish a budget to track your income and expenses. This helps you manage your money effectively and save for your financial goals.',
            ),
            TipCard(
              title: 'Emergency Fund',
              description:
                  'Build an emergency fund to cover unexpected expenses. Aim for 3-6 months of living expenses to provide a financial safety net.',
            ),
            TipCard(
              title: 'Invest Wisely',
              description:
                  'Learn about different investment options and consider diversifying your portfolio. Start early to take advantage of compounding returns.',
            ),
            // Add more financial tips as needed
          ],
        ),
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  final String title;
  final String description;

  const TipCard({
    Key? key,
    required this.title,
    required this.description,
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
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
