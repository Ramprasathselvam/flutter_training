import 'package:flutter/material.dart';

class TableExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          border: TableBorder.all(color: Colors.black), // Border around the table
          columnWidths: {
            0: FixedColumnWidth(120), // Width of the first column
            1: FixedColumnWidth(200), // Width of the second column
            2: FixedColumnWidth(80),  // Width of the third column
          },
          children: [
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Age', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('John Doe'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('john.doe@example.com'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('29'),
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Jane Smith'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('jane.smith@example.com'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('34'),
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Alex Johnson'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('alex.johnson@example.com'),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('25'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
