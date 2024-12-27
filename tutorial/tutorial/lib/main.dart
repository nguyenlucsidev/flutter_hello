import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        backgroundColor: Colors.blue[900],
        drawer: Container(
          width: 400,
          height: 500,
          color: Colors.white,
        ),
        body: Column(
          children: [
            Text("Hello"),
            Text("Login to continue"),
            TextField(
              decoration: InputDecoration(hintText: "Username"),
            ),
            TextField(decoration: InputDecoration(hintText: "Password")),
            TextButton(
                onPressed: () {
                  print("clicked");
                },
                child: Text("Forgot password")),
            ElevatedButton(
                onPressed: () {
                  print("login is click");
                },
                child: Text("Login")),
            
            Text("Or sign in with"),

            ElevatedButton(
              onPressed: () {
                print("login with google");
              },

              child: Image.asset("assets/images/google.png"),
            ),
          ],
        ),
      ),
    );
  }
}
