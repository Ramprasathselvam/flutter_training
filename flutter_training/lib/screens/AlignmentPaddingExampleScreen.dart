import 'package:flutter/material.dart';

class AlignmentPaddingExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align, Center, Padding Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Using Padding to add space around a widget
          Padding(
            padding: EdgeInsets.all(16.0), // Adds padding of 16px on all sides
            child: Container(
              color: Colors.blue,
              width: 150,
              height: 150,
              child: Center(child: Text('Padding', style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 20),

          // Using Center to center a widget horizontally and vertically
          Center(
            child: Container(
              color: Colors.green,
              width: 150,
              height: 150,
              child: Center(child: Text('Center', style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 20),

          // Using Align to align a widget within its parent container
          Align(
            alignment: Alignment.topRight, // Align the widget to the top-right
            child: Container(
              color: Colors.red,
              width: 150,
              height: 150,
              child: Center(child: Text('Align', style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
