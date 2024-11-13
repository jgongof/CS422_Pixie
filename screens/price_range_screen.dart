import 'package:flutter/material.dart';
import 'distance_screen.dart';

class PriceRangeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Price Range')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: [
                _buildPriceButton('\$0-20'),
                _buildPriceButton('\$20-30'),
                _buildPriceButton('\$30-40'),
                _buildPriceButton('Any'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DistanceScreen()));
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

  Widget _buildPriceButton(String label) {
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
