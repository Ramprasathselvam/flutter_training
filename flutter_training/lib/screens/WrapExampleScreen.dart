import 'package:flutter/material.dart';

class WrapExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap Example')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10.0, // Horizontal space between children
          runSpacing: 10.0, // Vertical space between rows
          alignment: WrapAlignment.start, // Align children to the start of the row
          children: List.generate(20, (index) {
            return Container(
              color: Colors.blue[(index % 9 + 1) * 100], // Color variation
              width: 80.0,
              height: 80.0,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
