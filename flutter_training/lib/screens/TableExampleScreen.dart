import 'package:flutter/material.dart';


/// ┌────────────────────────────────────────────────────────────────────┐
/// │ TableExampleScreen: Demonstrates the use of Table widget in Flutter│
/// │                                                                    │
/// │ The Table widget is ideal for displaying tabular data, with control│
/// │ over individual column widths, borders, and row styling.           │
/// └────────────────────────────────────────────────────────────────────┘

/// # Key Components Explained
//
// # 1. Table Widget
// # - Organizes widgets into rows/columns, allowing precise control over each cell.
// # - Enables setting custom column widths, borders, and row styling.
//
// # 2. Column Widths
// # - columnWidths: Customize individual column widths with FixedColumnWidth.
// #   - First Column: Width set to 120 pixels.
// #   - Second Column: Width set to 200 pixels.
// #   - Third Column: Width set to 80 pixels.
//
// # 3. Table Border
// # - Use TableBorder.all() to apply a border around the table.
// # - Ideal for visually separating data in a tabular format.
//
// # 4. TableRow and Cell Styling
// # - Each TableRow defines a row, with Container widgets as cells.
// # - Adding padding within each cell prevents cramped content.
// # - Apply bold font styling to header cells for distinction.


class TableExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Table Example')), // ◉ AppBar with screen title
      body: Padding(
        padding: const EdgeInsets.all(16.0), // ◉ Adds padding around the Table
        child: Table(
          border: TableBorder.all(color: Colors.black), // ◉ Border around the entire table
          columnWidths: {
            0: FixedColumnWidth(120), // ◉ Width for the first column
            1: FixedColumnWidth(200), // ◉ Width for the second column
            2: FixedColumnWidth(80),  // ◉ Width for the third column
          },
          children: [
            /// ─────────────────────────────────────────────────────
            /// Table Header Row
            /// ─────────────────────────────────────────────────────
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

            /// ─────────────────────────────────────────────────────
            /// First Data Row
            /// ─────────────────────────────────────────────────────
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

            /// ─────────────────────────────────────────────────────
            /// Second Data Row
            /// ─────────────────────────────────────────────────────
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

            /// ─────────────────────────────────────────────────────
            /// Third Data Row
            /// ─────────────────────────────────────────────────────
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
