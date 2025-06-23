import 'package:flutter/material.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String returnedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Details'),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(data: 'Hello from Home!'),
                  ),
                );

                if (result != null) {
                  setState(() {
                    returnedData = result;
                  });
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              'Returned: $returnedData',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
