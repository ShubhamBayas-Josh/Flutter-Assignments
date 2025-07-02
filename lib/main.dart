import 'package:flutter/material.dart';
import 'Assignment6/grid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Grid UI',
      home: const GridPage(),
    );
  }
}
