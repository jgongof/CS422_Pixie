import 'package:flutter/material.dart';
import 'price_range_screen.dart';
import 'protein_screen.dart';

class AllergyScreen extends StatelessWidget {
  final bool isCookPath;

  AllergyScreen({required this.isCookPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Allergies')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: 8.0,
              children: [
                _buildChoiceChip('Nuts'),
                _buildChoiceChip('Gluten'),
                _buildChoiceChip('Eggs'),
                _buildChoiceChip('Dairy'),
                _buildChoiceChip('Shellfish'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (isCookPath) {
                  // Skip to Protein Screen for Cook path
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ProteinScreen()),
                  );
                } else {
                  // Go to Price Range Screen for Take-Out path
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PriceRangeScreen()),
                  );
                }
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

  Widget _buildChoiceChip(String label) {
    return ChoiceChip(label: Text(label), selected: false, onSelected: (_) {});
  }
}
