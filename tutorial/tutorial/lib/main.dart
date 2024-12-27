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
      home: Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        backgroundColor: Colors.redAccent,
        drawer: Container(
          width: 400,
          height: 500,
          color: Colors.white,
        ),
        body: Column(
          children: [
            Text("Hello"),
            Text("Login to continue"),
          ],
        ),
      ),
    );
  }
}