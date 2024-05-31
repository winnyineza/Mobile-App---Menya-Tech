import 'package:flutter/material.dart';

class AccessibilitySettings extends StatefulWidget {
  @override
  _AccessibilitySettingsState createState() => _AccessibilitySettingsState();
}

class _AccessibilitySettingsState extends State<AccessibilitySettings> {
  double _fontSize = 14.0;
  bool _highContrast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accessibility Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Font Size'),
            trailing: Slider(
              min: 10.0,
              max: 30.0,
              value: _fontSize,
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('High Contrast'),
            trailing: Switch(
              value: _highContrast,
              onChanged: (value) {
                setState(() {
                  _highContrast = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
