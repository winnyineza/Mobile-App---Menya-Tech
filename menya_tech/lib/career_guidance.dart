import 'package:flutter/material.dart';

class CareerGuidance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Guidance'),
      ),
      body: ListView(
        children: [
          CareerCard(
            title: 'Data Analyst',
            description: 'Data Analysts analyze data to help companies make informed decisions.',
            resourceUrl: 'https://www.example.com/data-analyst',
          ),
        ],
      ),
    );
  }
}

class CareerCard extends StatelessWidget {
  final String title;
  final String description;
  final String resourceUrl;

  CareerCard({required this.title, required this.description, required this.resourceUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
          TextButton(
            child: Text('Learn More'),
            onPressed: () {
              // Open resource URL
            },
          ),
        ],
      ),
    );
  }
}
