import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TranslatorScreen extends StatefulWidget {
  @override
  _TranslatorScreenState createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  TextEditingController _textEditingController = TextEditingController();
  String _translatedText = "";

  void translateText() async {
    String inputText = _textEditingController.text;

    try {
      final response = await http.post(
        Uri.parse('http://10.0.2.2:3000/translate'), // Update with your Flask API endpoint
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'input_text': inputText}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _translatedText = data['translated_text'];
        });
      } else {
        setState(() {
          _translatedText = "Translation failed"; // Handle error here
        });
      }
    } catch (e) {
      setState(() {
        _translatedText = "Translation failed"; // Handle error here
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celita'),
        backgroundColor: Color(0xFFFFBC57),
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
                _translatedText, // Display the translated text here
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          // Text Input Field
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: 'Enter text to translate',
              ),
            ),
          ),
          // Translate Button
          ElevatedButton(
            onPressed: () {
              translateText();
            },
            child: Text('Translate'),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFBC57),
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

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
