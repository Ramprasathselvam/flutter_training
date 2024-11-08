import 'package:flutter/material.dart';

/*
Row and column are the two essential widgets in Flutter that allows developers to align children
horizontally and vertically according to our needs.

Row:
It creates a horizontal array of children.

// ┌──────────────────────────────────────────────┐
// │  Row widget to arrange children horizontally │
// └──────────────────────────────────────────────┘

 */


class RowExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌────────────────────────────────────────────┐
    // │ Scaffold widget for main screen structure  │
    // └────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Example'),                      // ◉ AppBar title text
      ),
      body: Center(
        // ┌────────────────────────────────────────────┐
        // │ Row widget to arrange children horizontally│
        // └────────────────────────────────────────────┘
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,  // ◉ Space children evenly around center
          children: [
            // ┌──────────────────────────────────────┐
            // │ First child - Red container with '1' │
            // └──────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.red,                         // ◉ Background color: Red
              child: Center(
                child: Text(
                  '1',                                   // ◉ Display '1' inside container
                  style: TextStyle(color: Colors.white), // ◉ Text style: white color
                ),
              ),
            ),

            // ┌───────────────────────────────────────┐
            // │Second child - Green container with '2'│
            // └───────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.green,                       // ◉ Background color: Green
              child: Center(
                child: Text(
                  '2',                                   // ◉ Display '2' inside container
                  style: TextStyle(color: Colors.white), // ◉ Text style: white color
                ),
              ),
            ),

            // ┌───────────────────────────────────────┐
            // │ Third child - Blue container with '3' │
            // └───────────────────────────────────────┘
            Container(
              width: 80,                                 // ◉ Width of container
              height: 80,                                // ◉ Height of container
              color: Colors.blue,                        // ◉ Background color: Blue
              child: Center(
                child: Text(
                  '3',                                   // ◉ Display '3' inside container
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

