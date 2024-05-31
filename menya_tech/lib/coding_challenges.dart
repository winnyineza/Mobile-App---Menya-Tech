import 'package:flutter/material.dart';

class CodingChallenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coding Challenges'),
      ),
      body: ListView(
        children: [
          ChallengeCard(
            title: 'Check Prime Number',
            description: 'Write a function to check if a number is prime.',
            initialCode: 'def is_prime(n):\n    pass',
          ),
        ],
      ),
    );
  }
}

class ChallengeCard extends StatelessWidget {
  final String title;
  final String description;
  final String initialCode;

  ChallengeCard({required this.title, required this.description, required this.initialCode});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(description),
          ),
          TextEditorWidget(initialCode: initialCode),
          ConsoleOutputWidget(),
        ],
      ),
    );
  }
}

class TextEditorWidget extends StatelessWidget {
  final String initialCode;

  TextEditorWidget({required this.initialCode});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(child: Text('Code editor with initial code:\n$initialCode')),
    );
  }
}

class ConsoleOutputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(child: Text('Console output')),
    );
  }
}
