import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String data;

  const DetailsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Received: $data',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Go Back with Data'),
              onPressed: () {
                Navigator.pop(context, 'Data from Details!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
