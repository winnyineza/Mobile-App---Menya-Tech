import 'package:flutter/material.dart';
import 'interactive_lessons.dart';
import 'coding_challenges.dart';
import 'community_forum.dart';
import 'career_guidance.dart';
import 'accessibility_settings.dart';
// import 'localization.dart';
import 'feedback_form.dart';

void main() {
  runApp(MenyaApp());
}

class MenyaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [/* localization delegates */],
      supportedLocales: [Locale('en'), Locale('es')],
      title: 'Menya Tech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenyaHomePage(),
    );
  }
}

class MenyaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menya Tech'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Interactive Lessons'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InteractiveLessons()));
            },
          ),
          ListTile(
            title: Text('Coding Challenges'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CodingChallenges()));
            },
          ),
          ListTile(
            title: Text('Community Forum'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityForum()));
            },
          ),
          ListTile(
            title: Text('Career Guidance'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CareerGuidance()));
            },
          ),
          ListTile(
            title: Text('Accessibility Settings'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilitySettings()));
            },
          ),
          ListTile(
            title: Text('Feedback Form'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FeedbackForm()));
            },
          ),
        ],
      ),
    );
  }
}
