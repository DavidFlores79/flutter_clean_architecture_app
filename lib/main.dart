import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_app/presentation/auth/pages/signup.dart';
//<>
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SignupPage(),
    );
  }
}