import 'package:flutter/material.dart';
import 'allergy_screen.dart';

class PreferencesScreen extends StatefulWidget {
  @override
  _PreferencesScreenState createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  bool showMoreOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pixie', style: TextStyle(color: Colors.pink[700])),
        backgroundColor: Colors.pink[50],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.pink[700]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What Are You in the Mood for?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink[900]),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                _buildPreferenceButton('Healthy'),
                _buildPreferenceButton('Savory'),
                _buildPreferenceButton('Hearty'),
                _buildPreferenceButton('Light/Quick'),
                _buildPreferenceButton('Vegetarian/Vegan'),
                _buildPreferenceButton('Sweet'),
                _buildPreferenceButton('Fresh'),
                _buildPreferenceButton('Warm'),
                if (showMoreOptions) ...[
                  _buildPreferenceButton('Spicy'),
                  _buildPreferenceButton('Tangy'),
                  _buildPreferenceButton('Salty'),
                  _buildPreferenceButton('Crispy'),
                ],
              ],
            ),
            SizedBox(height: 20),
            if (!showMoreOptions)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showMoreOptions = true;
                  });
                },
                child: Text('More Options'),
              ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(fontSize: 18, color: Colors.pink[400])),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreferenceButton(String label) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => AllergyScreen(isCookPath: false)),
        );
      },
      child: Text(label, style: TextStyle(fontSize: 16)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.pink[200]!),
        ),
      ),
    );
  }
}
