import 'package:flutter/material.dart';

class TranslatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celita'),
        backgroundColor: Color(0xFFFFBC57), // Set the color to FFBC57
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Translation Box
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              color: Colors.grey.shade200,
              child: Text(
                'Translation Box',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          // Translated Text Box
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              color: Colors.grey.shade300,
              child: Text(
                'Translated Text Box',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFBC57), // Set the color to FFBC57
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.history, color: Colors.white),
              onPressed: () {
                // Add history icon's onPressed logic here
              },
            ),
            IconButton(
              icon: Icon(Icons.mic, color: Colors.white),
              onPressed: () {
                // Add mic icon's onPressed logic here
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                // Add favorite icon's onPressed logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
