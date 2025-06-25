import 'package:flutter/material.dart';
import 'Assignment3/login_page.dart';
import 'profile_card_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Link',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      title: 'Navigation with Data',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
    );
  }
}
