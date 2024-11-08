import 'package:flutter/material.dart';


/// ┌───────────────────────────────────────────────────────┐
/// │ ExpandedFlexibleExampleScreen: Expanded vs. Flexible  │
/// │                                                       │
/// │ Demonstrates the use of Expanded and Flexible widgets │
/// │ in a Column with Rows, showing different behaviors.   │
/// └───────────────────────────────────────────────────────┘
/// 1. Expanded Widget
/// The Expanded widget takes up all remaining space within a Row or Column.
/// Useful when one child needs to occupy the remaining space, regardless of other widgets.
/// 2. Flexible Widget
/// The Flexible widget allows its child to resize within a Row or Column, based on the flex factor.
/// flex determines the proportion of available space each Flexible child occupies relative to others.
/// 3. Differences between Expanded and Flexible
/// Expanded always takes up as much space as possible within the main axis, leaving no room for flexibility.
/// Flexible gives more control over space distribution by setting a flex factor, allowing flexibility in layout.

class ExpandedFlexibleExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌───────────────────────────────────────────────────────┐
    // │ Scaffold: Main structure for the screen               │
    // │                                                       │
    // │ - Contains an AppBar with a title                     │
    // │ - Column as main body, containing examples of Row     │
    // │   with Expanded and Flexible children                 │
    // └───────────────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(title: Text('Expanded & Flexible Example')), // ◉ AppBar with title
      body: Column(
        children: [
          // ┌────────────────────────────────────────────┐
          // │ First Row: Using Expanded                  │
          // │                                            │
          // │ - Fixed Container, followed by Expanded    │
          // │ - Expanded takes up all remaining space    │
          // └────────────────────────────────────────────┘
          Row(
            children: [
              Container(
                color: Colors.blue,    // ◉ Fixed width container
                width: 200,
                height: 100,
                child: Center(child: Text('Fixed', style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,  // ◉ Expanded container
                  height: 100,
                  child: Center(child: Text('Expanded', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // ◉ Spacer between rows

          // ┌────────────────────────────────────────────┐
          // │ Second Row: Using Flexible                 │
          // │                                            │
          // │ - Two Flexible widgets with different flex │
          // │   values to control space distribution     │
          // └────────────────────────────────────────────┘
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red,    // ◉ First Flexible container (flex: 2)
                  height: 100,
                  child: Center(child: Text('Flexible 1', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.yellow, // ◉ Second Flexible container (flex: 3)
                  height: 100,
                  child: Center(child: Text('Flexible 2', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // ◉ Spacer between rows

          // ┌────────────────────────────────────────────┐
          // │ Third Row: Expanded and Flexible           │
          // │                                            │
          // │ - Combination of Flexible and Expanded     │
          // └────────────────────────────────────────────┘
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.purple, // ◉ Flexible container (flex: 1)
                  height: 100,
                  child: Center(child: Text('Flexible 1', style: TextStyle(color: Colors.white))),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange, // ◉ Expanded container
                  height: 100,
                  child: Center(child: Text('Expanded', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.teal,   // ◉ Second Flexible container (flex: 1)
                  height: 100,
                  child: Center(child: Text('Flexible 2', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
