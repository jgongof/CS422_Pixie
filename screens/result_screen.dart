import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Recommendation'),
            SizedBox(height: 20),
            Image.asset('assets/food_image.png'), // Placeholder image
            SizedBox(height: 20),
            Text('Description of the selected item.'),
            TextButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Back to Start'),
            ),
          ],
        ),
      ),
    );
  }
}
