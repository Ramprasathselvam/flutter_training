import 'package:flutter/material.dart';


/// ┌─────────────────────────────────────────────────────┐
/// │ GridViewExampleScreen: Displaying Items in a Grid   │
/// │                                                     │
/// │ This screen demonstrates the use of Flutter's       │
/// │ GridView widget to display a collection of items    │
/// │ in a grid layout.                                   │
/// └─────────────────────────────────────────────────────┘
/// 1. GridView Widget
/// GridView is used to display items in a grid layout, with various configurations to control spacing, number of columns, and item size.
/// The GridView.builder constructor creates items only as they are scrolled into view, improving performance with large datasets.

class GridViewExampleScreen extends StatelessWidget {
  // ┌────────────────────────────────────────────┐
  // │ List of items to display in the grid       │
  // │ Each item is a simple string label         │
  // └────────────────────────────────────────────┘
  final List<String> items = [
    'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5',
    'Item 6', 'Item 7', 'Item 8', 'Item 9', 'Item 10',
    'Item 11', 'Item 12', 'Item 13', 'Item 14', 'Item 15',
  ];

  @override
  Widget build(BuildContext context) {
    // ┌────────────────────────────────────────────────────┐
    // │ Scaffold: Main structure for the screen            │
    // │                                                    │
    // │ - Contains an AppBar with title                    │
    // │ - GridView as the main body                        │
    // └────────────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),                    // ◉ Title for the AppBar
      ),
      body: GridView.builder(
        // ┌────────────────────────────────────────────────┐
        // │ GridView.builder: Creates items on demand      │
        // │                                                │
        // │ - Uses gridDelegate to define grid properties  │
        // │ - itemCount defines total items in grid        │
        // └────────────────────────────────────────────────┘
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,        // ◉ Number of columns in grid
          crossAxisSpacing: 10.0,   // ◉ Horizontal space between items
          mainAxisSpacing: 10.0,    // ◉ Vertical space between items
        ),
        itemCount: items.length,    // ◉ Total number of items to display

        // ┌──────────────────────────────────────────────────┐
        // │ itemBuilder: Builds each item in the grid        │
        // │                                                  │
        // │ - Returns a Card widget with a text label        │
        // │ - Sets card color and text style                 │
        // └──────────────────────────────────────────────────┘
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueAccent,                        // ◉ Card background color
            child: Center(
              child: Text(
                items[index],                                // ◉ Display item text
                style: TextStyle(color: Colors.white, fontSize: 18), // ◉ Text style
              ),
            ),
          );
        },
      ),
    );
  }
}



class DetailScreen extends StatelessWidget {
  final String item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item Detail')),
      body: Center(
        child: Text(
          'You clicked on: $item',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

