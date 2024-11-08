import 'package:flutter/material.dart';

/// ┌─────────────────────────────────────────────┐
/// │ StackExampleScreen: Layered Layout Example  │
/// │                                             │
/// │This screen demonstrates the use of Flutter's│
/// │Stack widget to overlay child widgets,       │
/// │positioning them on top of each other with   │
/// │an optional Positioned widget for fine-tuned │
/// │control.                                     │
/// └─────────────────────────────────────────────┘
/// Each child of a Stack widget is either positioned or non-positioned.
///
///

class StackExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌─────────────────────────────────────────────┐
    // │ Scaffold: Basic structure for the screen    │
    // │                                             │
    // │ - AppBar with a title text                  │
    // │ - Center widget to center Stack in body     │
    // └─────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),                 // ◉ AppBar title text
      ),
      body: Center(
        // ┌────────────────────────────────────────────────┐
        // │ Stack Widget: Layered Layout                   │
        // │                                                │
        // │ Stack allows children to overlap each other.   │
        // │ It is commonly used to create layered designs. │
        // │ The alignment property centers all children.   │
        // └────────────────────────────────────────────────┘
        child: Stack(
          alignment: Alignment.center, // ◉ Align all children to the center of the Stack
          children: [
            // ┌────────────────────────────────────┐
            // │ Blue Container (Background Layer)  │
            // │                                    │
            // │ - Size: 200x200                    │
            // │ - Color: Blue Accent               │
            // └────────────────────────────────────┘
            Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
            ),

            // ┌────────────────────────────────────┐
            // │ Green Container (Middle Layer)     │
            // │                                    │
            // │ - Size: 150x150                    │
            // │ - Color: Green Accent              │
            // └────────────────────────────────────┘
            Container(
              width: 150,
              height: 150,
              color: Colors.greenAccent,
            ),

            // ┌─────────────────────────────────────────────┐
            // │ Red Container (Top Layer with Text)         │
            // │                                             │
            // │ - Positioned at bottom right of the Stack   │
            // │ - Size: 100x100                             │
            // │ - Color: Red Accent                         │
            // │ - Text: "Top" in the center (White)         │
            // └─────────────────────────────────────────────┘
            Positioned(
              bottom: 10,                                   // ◉ Distance from the bottom
              right: 10,                                   // ◉ Distance from the right
              child: Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
                child: Center(
                  child: Text(
                    'Top',                                 // ◉ Display "Top" text inside container
                    style: TextStyle(color: Colors.white), // ◉ Text style: white color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

