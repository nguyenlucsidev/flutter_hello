import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Text(
            "Hello",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Login to continue",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              filled: true,
              fillColor: Colors.white.withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  print("clicked");
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: Text("Forgot password")),
          ),
          ElevatedButton(
              onPressed: () {
                print("login is click");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              child: Text("Login")),
          Text("Or sign in with"),
          ElevatedButton(
            onPressed: () {
              print("login with google");
            },
            child: Row(
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 22,
                  height: 22,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 22,
                  height: 22,
                ),
                Text('Login with facebook'),
              ],
            ),
          ),
          Row(
            children: [
              Text("Don't have account?"),
              TextButton(
                onPressed: () {},
                child: Text("Sign up"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
