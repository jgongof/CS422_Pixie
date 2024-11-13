import 'package:flutter/material.dart';
import 'preferences_screen.dart';
import 'skill_level_screen.dart';

class MainMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select one', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PreferencesScreen()));
              },
              child: Text('Take-Out'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => SkillLevelScreen()));
              },
              child: Text('Cook'),
            ),
          ],
        ),
      ),
    );
  }
}
