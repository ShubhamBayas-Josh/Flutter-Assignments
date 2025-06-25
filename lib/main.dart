import 'package:flutter/material.dart';
import 'Assignment3/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Link',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
