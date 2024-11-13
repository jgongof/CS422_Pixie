import 'package:flutter/material.dart';
import 'carb_screen.dart';

class ProteinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Protein')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: [
                _buildProteinButton('Beef'),
                _buildProteinButton('Chicken'),
                _buildProteinButton('Fish'),
                _buildProteinButton('Tofu'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => CarbScreen()));
              },
              child: Text('Next'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(color: Colors.pink[400])),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProteinButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
