import 'package:flutter/material.dart';

class SizedBoxExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox with fixed height for spacing
            Container(
              color: Colors.blue,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 30), // Space between Box 1 and Box 2

            // SizedBox with fixed width for spacing
            Container(
              color: Colors.green,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(width: 50), // Space between Box 2 and Box 3

            // SizedBox with fixed width and height for spacing
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 3', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 30), // Space between Box 3 and Box 4

            // SizedBox with fixed height to add vertical space
            Container(
              color: Colors.orange,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 4', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
