import 'package:flutter/material.dart';

/// ┌───────────────────────────────────────────┐
/// │ ColumnExampleScreen: A Basic UI Layout    │
/// │                                           │
/// │ This screen demonstrates the use of       │
/// │ Flutter's Column widget to arrange        │
/// │ child widgets vertically. Each child      │
/// │ is a Container with unique styling        │
/// │ to represent different components.        │
/// └───────────────────────────────────────────┘
class ColumnExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌─────────────────────────────────────────────┐
    // │ Scaffold: Basic structure for the screen    │
    // │                                             │
    // │ - AppBar with a title text                  │
    // │ - Center widget to center Column in body    │
    // └─────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Example'),                 // ◉ AppBar title text
      ),
      body: Center(
        // ┌────────────────────────────────────────────────┐
        // │ Column Widget: Vertical Arrangement of Widgets │
        // │                                                │
        // │ This Column uses MainAxisAlignment.spaceAround │
        // │ to evenly space each child widget vertically.  │
        // └────────────────────────────────────────────────┘
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // ◉ Spacing: distributes children vertically
          children: [
            // ┌──────────────────────────────────────────┐
            // │ First child - Orange container with 'A'  │
            // │                                          │
            // │ - Width and Height: 80                   │
            // │ - Background Color: Orange               │
            // │ - Child: Centered Text 'A'               │
            // └──────────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.orange,                      // ◉ Background color: Orange
              child: Center(
                child: Text(
                  'A',                                   // ◉ Display 'A' inside container
                  style: TextStyle(color: Colors.white), // ◉ Text style: white color
                ),
              ),
            ),

            // ┌──────────────────────────────────────────┐
            // │ Second child - Purple container with 'B' │
            // │                                          │
            // │ - Width and Height: 80                   │
            // │ - Background Color: Purple               │
            // │ - Child: Centered Text 'B'               │
            // └──────────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.purple,                      // ◉ Background color: Purple
              child: Center(
                child: Text(
                  'B',                                   // ◉ Display 'B' inside container
                  style: TextStyle(color: Colors.white), // ◉ Text style: white color
                ),
              ),
            ),

            // ┌──────────────────────────────────────────┐
            // │ Third child - Teal container with 'C'    │
            // │                                          │
            // │ - Width and Height: 80                   │
            // │ - Background Color: Teal                 │
            // │ - Child: Centered Text 'C'               │
            // └──────────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.teal,                        // ◉ Background color: Teal
              child: Center(
                child: Text(
                  'C',                                   // ◉ Display 'C' inside container
                  style: TextStyle(color: Colors.white), // ◉ Text style: white color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
