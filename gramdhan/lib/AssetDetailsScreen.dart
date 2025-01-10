import 'package:flutter/material.dart';
import 'package:gramdhan/ProfileBuildingScreen.dart'; // Import your ProfileBuildingScreen file

class AssetDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asset Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Asset Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            AssetQuestion(
              question: 'Do you have your own house?',
              options: ['Yeah', 'No'],
            ),
            SizedBox(height: 20),
            AssetQuestion(
              question: 'Do you own any other property like farm/land/factory?',
              options: ['Yeah', 'No'],
            ),
            SizedBox(height: 20),
            AssetQuestion(
              question: 'Do you have any live stock?',
              options: ['Yeah', 'No'],
            ),
            SizedBox(height: 20),
            AssetQuestion(
              question: 'Do you have a personal vehicle?',
              options: ['Yeah', 'No'],
            ),
            SizedBox(height: 20),
            Text(
              'I declare that the above information is correct and true.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to ProfileBuildingScreen on submit
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileBuildingScreen()),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class AssetQuestion extends StatefulWidget {
  final String question;
  final List<String> options;

  const AssetQuestion({
    required this.question,
    required this.options,
  });

  @override
  _AssetQuestionState createState() => _AssetQuestionState();
}

class _AssetQuestionState extends State<AssetQuestion> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: widget.options.map((option) {
            return Expanded(
              child: RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
