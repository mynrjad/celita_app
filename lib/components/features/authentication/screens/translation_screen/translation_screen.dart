import 'package:flutter/material.dart';

class TranslatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Translation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Translate Speech:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Spoken text will appear here',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement speech recognition logic here
              },
              child: Text('Start Listening'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement translation logic here
              },
              child: Text('Translate'),
            ),
            SizedBox(height: 20),
            Text(
              'Translated Text:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Text(
                  'Translated Text will appear here',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}