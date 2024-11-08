import 'package:flutter/material.dart';

/// ┌────────────────────────────────────────────────────────────────────┐
/// │ SizedBoxExampleScreen: Demonstrates the use of SizedBox for spacing│
/// │                                                                    │
/// │ SizedBox is a widget for adding fixed space between widgets.       │
/// │ It allows setting custom width and height, making it ideal         │
/// │ for organizing layout spacing without needing extra containers.    │
/// └────────────────────────────────────────────────────────────────────┘

// 1. SizedBox Widget
// SizedBox is a widget that can provide fixed width and/or height, often used to create space between widgets.
// Commonly utilized for adding horizontal or vertical spacing in layouts without requiring additional Container widgets.
// 2. Spacing and Layout Control
// SizedBox with height is used for vertical spacing between rows in a Column.
// SizedBox with width is ideal for horizontal spacing in a Row layout.
// Using SizedBox contributes to clean, readable code and is efficient for organizing layouts.
// 3. Centering Content
// Wrapping text in Center within each Container centers it both horizontally and vertically.
// mainAxisAlignment and crossAxisAlignment center the entire content of the Column, making the layout symmetrical.


class SizedBoxExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox Example')), // ◉ AppBar with screen title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the Column contents vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers the Column contents horizontally
          children: [
            /// ─────────────────────────────────────────────────────
            /// Box 1 with SizedBox for spacing below
            /// ─────────────────────────────────────────────────────
            Container(
              color: Colors.blue,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 30), // ◉ Adds vertical space after Box 1

            /// ─────────────────────────────────────────────────────
            /// Box 2 with SizedBox for spacing below
            /// ─────────────────────────────────────────────────────
            Container(
              color: Colors.green,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 30), // ◉ Adds vertical space after Box 2

            /// ─────────────────────────────────────────────────────
            /// Box 3 with SizedBox for spacing below
            /// ─────────────────────────────────────────────────────
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Center(child: Text('Box 3', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 30), // ◉ Adds vertical space after Box 3

            /// ─────────────────────────────────────────────────────
            /// Box 4 (last container in the Column)
            /// ─────────────────────────────────────────────────────
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

