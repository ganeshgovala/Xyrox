import "package:flutter/material.dart";
import "package:xyrox/pages/login_page.dart";
import "package:xyrox/pages/splash_screen.dart";

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}