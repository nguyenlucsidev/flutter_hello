import "package:flutter/material.dart";
import "package:tutorial/pages/login_page.dart";
import "package:tutorial/styles/app_colors.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: "Urbanist",
            scaffoldBackgroundColor: AppColors.background,
        ), 
      home: LoginPage(),
    );
  }
}
