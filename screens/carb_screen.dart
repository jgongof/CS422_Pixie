import 'package:flutter/material.dart';
import 'result_screen.dart';

class CarbScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Carb')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: [
                _buildCarbButton('Rice'),
                _buildCarbButton('Pasta'),
                _buildCarbButton('Potatoes'),
                _buildCarbButton('Bread'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ResultScreen()));
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

  Widget _buildCarbButton(String label) {
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
