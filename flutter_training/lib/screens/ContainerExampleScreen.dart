import 'package:flutter/material.dart';

/*

In Flutter, a container is a widget class that allows you to customize the appearance of child widgets

Container is a parent widget that can hold several child widgets and manage them effectively
using width, height, padding, background color, and other attributes.

Add background color: Set the background color of the container with the color parameter
Add padding: Use the padding property to add empty space between the child widget and the container
Add margins: Use the margin property to add empty space around the child widget
Add a shape: Use the decoration property to add a shape to the container, such as a circle

*/

class ContainerExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ┌────────────────────────────────────────────────┐
    // │ Scaffold widget for basic visual structure     │
    // └────────────────────────────────────────────────┘
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget Example'),      // ◉ AppBar title text
      ),
      body: Center(
        // ┌─────────────────────────────────────────────────────┐
        // │ Centered Container with styling, padding, and text  │
        // └─────────────────────────────────────────────────────┘
        child: Container(
          width: 200,                                   // ◉ Container width
          height: 200,                                  // ◉ Container height
          margin: EdgeInsets.all(20),                   // ◉ Margin outside the container
          padding: EdgeInsets.all(15),                  // ◉ Padding inside the container
          alignment: Alignment.center,                  // ◉ Center alignment for child content
          decoration: BoxDecoration(
            color: Colors.blueAccent,                   // ◉ Base color for background
            borderRadius: BorderRadius.circular(20),    // ◉ Rounded corners with radius of 20
            boxShadow: [
              // ┌───────────────────────────────────────┐
              // │ Shadow effect around container        │
              // └───────────────────────────────────────┘
              BoxShadow(
                color: Colors.black.withOpacity(0.2),   // ◉ Black shadow with reduced opacity
                offset: Offset(3, 3),                   // ◉ Offset of shadow (3,3)
                blurRadius: 5,                          // ◉ Blurring radius for shadow
                spreadRadius: 2,                        // ◉ Spread radius for shadow
              ),
            ],
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent], // ◉ Gradient colors
              begin: Alignment.topLeft,                            // ◉ Gradient start
              end: Alignment.bottomRight,                          // ◉ Gradient end
            ),
          ),
          constraints: BoxConstraints(
            maxWidth: 250,                               // ◉ Max width constraint
            maxHeight: 250,                              // ◉ Max height constraint
          ),
          child: Text(
            'Hello, Container!',                         // ◉ Display text inside container
            style: TextStyle(color: Colors.white, fontSize: 18),  // ◉ Text style with white color and font size 18
            textAlign: TextAlign.center,                 // ◉ Center-aligned text
          ),
        ),
      ),
    );
  }
}
