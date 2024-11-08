import 'package:flutter/material.dart';


/// ┌─────────────────────────────────────────────────────────────────┐
/// │ AlignmentPaddingExampleScreen: Align, Center, Padding Example   │
/// │                                                                 │
/// │ Demonstrates the use of Padding, Center, and Align widgets in a │
/// │ Column to control layout alignment and spacing.                 │
/// └─────────────────────────────────────────────────────────────────┘

// 1. Padding
// Adds empty space around a widget. The Padding widget is useful for controlling the distance between widgets or for adding space around the edges.
// Accepts an EdgeInsets value, which can define padding for all sides or specify each side individually.
// 2. Center
// Centers its child widget both horizontally and vertically within the parent.
// Useful for layouts where the main focus needs to be centered in its container.
// 3. Align
// Aligns a widget within its parent based on an Alignment value.
// The alignment parameter can use positions like Alignment.topLeft, Alignment.center, Alignment.bottomRight, etc., providing flexibility in widget positioning.

///

class AlignmentPaddingExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌───────────────────────────────────────────────────────────────┐
    // │ Scaffold: Main structure for the screen                       │
    // │                                                               │
    // │ - Contains an AppBar with a title                             │
    // │ - Column as main body, containing examples of Padding, Center │
    // │   and Align widgets to demonstrate their behavior             │
    // └───────────────────────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(title: Text('Align, Center, Padding Example')), // ◉ AppBar with title
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // ◉ Centers Column content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // ◉ Centers Column content horizontally
        children: [
          // ┌─────────────────────────────────────────────────────────┐
          // │ First Example: Padding                                  │
          // │                                                         │
          // │ - Adds padding around a container with 16px on all      │
          // │   sides to create spacing around the widget             │
          // └─────────────────────────────────────────────────────────┘
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              color: Colors.blue,
              width: 150,
              height: 150,
              child: Center(child: Text('Padding', style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 20), // ◉ Spacer between examples

          // ┌─────────────────────────────────────────────────────────┐
          // │ Second Example: Center                                 │
          // │                                                         │
          // │ - Centers the container both horizontally and           │
          // │   vertically within the parent                          │
          // └─────────────────────────────────────────────────────────┘
          Center(
            child: Container(
              color: Colors.green,
              width: 150,
              height: 150,
              child: Center(child: Text('Center', style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 20), // ◉ Spacer between examples

          // ┌─────────────────────────────────────────────────────────┐
          // │ Third Example: Align                                   │
          // │                                                         │
          // │ - Positions the container to the top-right corner      │
          // │   within the parent using Alignment property            │
          // └─────────────────────────────────────────────────────────┘
          Align(
            alignment: Alignment.topRight,
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

