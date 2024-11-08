import 'package:flutter/material.dart';

class AspectRatioExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // AspectRatio with 16:9 ratio (wider)
            AspectRatio(
              aspectRatio: 16 / 9,
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
            SizedBox(height: 20), // Space between the AspectRatios

            // AspectRatio with 4:3 ratio (more square-like)
            AspectRatio(
              aspectRatio: 4 / 3,
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
            SizedBox(height: 20), // Space between the AspectRatios

            // AspectRatio with 1:1 ratio (square)
            AspectRatio(
              aspectRatio: 1 / 1,
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
