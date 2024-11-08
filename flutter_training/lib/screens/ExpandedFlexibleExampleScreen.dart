import 'package:flutter/material.dart';

class ExpandedFlexibleExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded & Flexible Example')),
      body: Column(
        children: [
          // Using Expanded to take up all available space
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Center(child: Text('Fixed', style: TextStyle(color: Colors.white))),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: Center(child: Text('Expanded', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Using Flexible to make the second item flexible
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: Center(child: Text('Flexible 1', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  child: Center(child: Text('Flexible 2', style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Another example with both Expanded and Flexible
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                  height: 100,
                  child: Center(child: Text('Flexible 1', style: TextStyle(color: Colors.white))),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: Center(child: Text('Expanded', style: TextStyle(color: Colors.white))),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.teal,
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
