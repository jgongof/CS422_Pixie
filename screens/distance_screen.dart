import 'package:flutter/material.dart';
import 'protein_screen.dart';

class DistanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Distance')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: [
                _buildDistanceButton('<5mi'),
                _buildDistanceButton('5-10mi'),
                _buildDistanceButton('10-20mi'),
                _buildDistanceButton('Any'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProteinScreen()));
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

  Widget _buildDistanceButton(String label) {
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
