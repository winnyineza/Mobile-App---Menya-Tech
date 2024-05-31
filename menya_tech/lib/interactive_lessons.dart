import 'package:flutter/material.dart';

class InteractiveLessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Lessons'),
      ),
      body: ListView(
        children: [
          LessonCard(
            title: 'Introduction to Python',
            content: 'Python is a high-level, interpreted programming language...',
            videoUrl: 'https://www.example.com/video1',
          ),
          LessonCard(
            title: 'Variables and Data Types',
            content: 'Variables in Python can store different types of data...',
            videoUrl: 'https://www.example.com/video2',
          ),
        ],
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String title;
  final String content;
  final String videoUrl;

  LessonCard({required this.title, required this.content, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(content),
          ),
          VideoPlayerWidget(videoUrl: videoUrl),
          QuizWidget(question: 'What is a variable in Python?'),
        ],
      ),
    );
  }
}

class VideoPlayerWidget extends StatelessWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Center(child: Text('Video player for $videoUrl')),
    );
  }
}

class QuizWidget extends StatelessWidget {
  final String question;

  QuizWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(question),
          // Add quiz options here
        ],
      ),
    );
  }
}
