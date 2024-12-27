import "package:flutter/material.dart";

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
          color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("hello world2 "),
            Text("hello again"),
            Text("new text")
          ]
        ),
      ),
    );
  }
}