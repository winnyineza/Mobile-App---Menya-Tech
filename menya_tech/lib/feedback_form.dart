import 'package:flutter/material.dart';

class FeedbackForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _feedbackController,
                decoration: InputDecoration(labelText: 'Your Feedback'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some feedback';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle feedback submission
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Feedback submitted')),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
