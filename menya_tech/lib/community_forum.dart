import 'package:flutter/material.dart';

class CommunityForum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: ListView(
        children: [
          ForumThread(
            title: 'How to start with Python?',
            author: 'User1',
            content: 'I am new to programming. How should I start learning Python?',
          ),
        ],
      ),
    );
  }
}

class ForumThread extends StatelessWidget {
  final String title;
  final String author;
  final String content;

  ForumThread({required this.title, required this.author, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text('$author: $content'),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForumThreadDetail(title: title, author: author, content: content)));
        },
      ),
    );
  }
}

class ForumThreadDetail extends StatelessWidget {
  final String title;
  final String author;
  final String content;

  ForumThreadDetail({required this.title, required this.author, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(author),
            subtitle: Text(content),
          ),
          // Add replies and new reply form here
        ],
      ),
    );
  }
}
