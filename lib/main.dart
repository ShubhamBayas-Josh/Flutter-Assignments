import 'package:flutter/material.dart';
import 'Assignment5/fetch_users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Fetch App',
      home: const FetchUsersPage(),
    );
  }
}
