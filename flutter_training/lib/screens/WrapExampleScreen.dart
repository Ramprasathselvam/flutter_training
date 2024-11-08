import 'package:flutter/material.dart';


/// ┌───────────────────────────────────────────────────────────────┐
/// │ WrapExampleScreen: Demonstrates the use of the Wrap widget    │
/// │                                                               │
/// │ Wrap arranges its children in horizontal rows and moves       │
/// │ items to a new row if the space runs out, making it ideal     │
/// │ for dynamic, responsive layouts.                              │
/// └───────────────────────────────────────────────────────────────┘

// 1. Wrap Widget
// The Wrap widget arranges its children in a row until the available width is used up. When this happens, it automatically moves to a new row.
// It’s useful for displaying content like tags, icons, or photos where items should wrap based on the available space.
// 2. Spacing and Run Spacing
// spacing: Controls the horizontal space between items within the same row.
// runSpacing: Controls the vertical space between rows.
// These properties allow for fine control over item separation, making the layout look neat and organized.


class WrapExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌───────────────────────────────────────────────────────────┐
    // │ Scaffold: Basic screen structure                          │
    // │                                                           │
    // │ - Contains an AppBar with a title                         │
    // │ - Wrap widget in the body, surrounded by padding for      │
    // │   spacing around the edges                                │
    // └───────────────────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(title: Text('Wrap Example')), // ◉ AppBar with screen title
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Adds padding around the Wrap widget
        child: Wrap(
          spacing: 10.0, // ◉ Horizontal spacing between items
          runSpacing: 10.0, // ◉ Vertical spacing between rows
          alignment: WrapAlignment.start, // Aligns items to the start (left)
          children: List.generate(20, (index) {
            return Container(
              color: Colors.blue[(index % 9 + 1) * 100], // Color gradient effect
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
