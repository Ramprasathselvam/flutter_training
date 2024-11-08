import 'package:flutter/material.dart';
import 'package:flutter_training/screens/AlignmentPaddingExampleScreen.dart';
import 'package:flutter_training/screens/AspectRatioExampleScreen.dart';
import 'package:flutter_training/screens/ButtonScreen.dart';
import 'package:flutter_training/screens/ColumnExampleScreen.dart';
import 'package:flutter_training/screens/ContainerExampleScreen.dart';
import 'package:flutter_training/screens/ExpandedFlexibleExampleScreen.dart';
import 'package:flutter_training/screens/GridViewExampleScreen.dart';
import 'package:flutter_training/screens/RowExampleScreen.dart';
import 'package:flutter_training/screens/SizedBoxExampleScreen.dart';
import 'package:flutter_training/screens/SliderScreen.dart';
import 'package:flutter_training/screens/StackLayout.dart';
import 'package:flutter_training/screens/SwitchScreen.dart';
import 'package:flutter_training/screens/TableExampleScreen.dart';
import 'package:flutter_training/screens/TextFieldScreen.dart';
import 'package:flutter_training/screens/WrapExampleScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Elements List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UIListScreen(),
    );
  }
}

class UIListScreen extends StatelessWidget {
  // Define a list of items with titles and corresponding screens
  final List<Map<String, dynamic>> uiElements = [
    {'title': 'Container', 'screen': ContainerExampleScreen()},
    {'title': 'Row', 'screen': RowExampleScreen()},
    {'title': 'Column', 'screen': ColumnExampleScreen()},
    {'title': 'Stack', 'screen': StackExampleScreen()},
    {'title': 'Grid View', 'screen': GridViewExampleScreen()},
    {'title': 'Expanded and Flexible', 'screen': ExpandedFlexibleExampleScreen()},
    {'title': 'Alignment(Align, Center, Padding)', 'screen': AlignmentPaddingExampleScreen()},
    {'title': 'Wrap', 'screen': WrapExampleScreen()},
    {'title': 'SizedBox', 'screen': SizedBoxExampleScreen()},
    {'title': 'Aspect Ratio', 'screen': AspectRatioExampleScreen()},
    {'title': 'Table', 'screen': TableExampleScreen()},

    {'title': 'Button Screen', 'screen': ButtonScreen()},
    {'title': 'TextField Screen', 'screen': TextFieldScreen()},
    {'title': 'Switch Screen', 'screen': SwitchScreen()},
    {'title': 'Slider Screen', 'screen': SliderScreen()},

    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Elements List')),
      body: ListView.builder(
        itemCount: uiElements.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(uiElements[index]['title']),
            onTap: () {
              // Navigate to the selected screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => uiElements[index]['screen']),
              );
            },
          );
        },
      ),
    );
  }
}



