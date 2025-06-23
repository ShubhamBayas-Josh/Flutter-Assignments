import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String data;

  const DetailsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Page')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.greenAccent,Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Received: $data',
                style: TextStyle(fontSize: 18, color: Colors.white),
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
      ),
    );
  }
}
