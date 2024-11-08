import 'package:flutter/material.dart';

/// ┌────────────────────────────────────────────────────────────────────┐
/// │ AspectRatioExampleScreen: Demonstrates the use of AspectRatio      │
/// │                                                                    │
/// │ AspectRatio maintains a fixed width-to-height ratio, making it     │
/// │ useful for responsive layouts where proportions need to stay       │
/// │ consistent across different screen sizes.                          │
/// └────────────────────────────────────────────────────────────────────┘
/*
Explanation of Key Topics
1. AspectRatio Widget
  AspectRatio helps maintain a consistent width-to-height ratio across various devices.
  Ideal for creating containers or images that need to stay proportional, regardless of screen size.
2. Common Aspect Ratios
  16:9: Used often for video content, as it provides a wide rectangular view.
  4:3: More balanced, often seen in older TVs and standard photography.
  1:1: Creates a square, suitable for icons, profile pictures, and balanced layouts.
3. Responsive Design with AspectRatio
  The AspectRatio widget contributes to responsive design, adjusting dimensions based on available space.
  It simplifies maintaining layout consistency without manually setting width or height on each device.
 */


class AspectRatioExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio Example')), // ◉ AppBar with screen title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the Column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the Column contents vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Centers the Column contents horizontally
          children: [
            /// ─────────────────────────────────────────────────────
            /// 16:9 AspectRatio (Wider Rectangle)
            /// ─────────────────────────────────────────────────────
            AspectRatio(
              aspectRatio: 16 / 9, // ◉ Width-to-height ratio of 16:9
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    '16:9 Ratio',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // ◉ Adds vertical space after 16:9 box

            /// ─────────────────────────────────────────────────────
            /// 4:3 AspectRatio (More Square-Like Rectangle)
            /// ─────────────────────────────────────────────────────
            AspectRatio(
              aspectRatio: 4 / 3, // ◉ Width-to-height ratio of 4:3
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    '4:3 Ratio',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // ◉ Adds vertical space after 4:3 box

            /// ─────────────────────────────────────────────────────
            /// 1:1 AspectRatio (Square)
            /// ─────────────────────────────────────────────────────
            AspectRatio(
              aspectRatio: 1 / 1, // ◉ Width-to-height ratio of 1:1 (Square)
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    '1:1 Ratio (Square)',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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

