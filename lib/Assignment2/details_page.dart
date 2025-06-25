import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String data;

  const DetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Page')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.greenAccent, Colors.black],
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
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Data from Details!');
                  },
                  child: const Text('Go Back with Data'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
