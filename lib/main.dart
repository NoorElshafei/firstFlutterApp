import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'FirstScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(fontFamily: 'Tajawal-Extrabold'),
      home: new FirstScreen()
      // RandomWords()
      /*Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body:Center(
            child: Text(wordPair.asPascalCase),
          ),
      )*/
      ,
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  Widget _buildSuggestions() {
    return ListView(
      children: <Widget>[
        _buildRow(Color.fromRGBO(97, 189, 79, 0.1)),
        _buildRow(Color.fromRGBO(255, 120, 203, 0.1)),
        _buildRow(Color.fromRGBO(255, 159, 26, 0.1)),
        _buildRow(Color.fromRGBO(0, 194, 224, 0.1)),
        _buildRow(Color.fromRGBO(195, 119, 224, 0.1)),
        _buildRow(Color.fromRGBO(255, 159, 26, 0.1)),
        _buildRow(Color.fromRGBO(97, 189, 79, 0.1)),
        _buildRow(Color.fromRGBO(0, 194, 224, 0.1)),
        _buildRow(Color.fromRGBO(195, 119, 224, 0.1)),
        _buildRow(Color.fromRGBO(255, 159, 26, 0.1)),
        _buildRow(Color.fromRGBO(0, 194, 224, 0.1)),
      ],
      //itemExtent: 90,
      padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      // word pairing, and places each suggestion into a ListTile
      // row. For even rows, the function adds a ListTile row for
      // the word pairing. For odd rows, the function adds a
      // Divider widget to visually separate the entries. Note that
      // the divider may be difficult to see on smaller devices.
      /*itemBuilder: (BuildContext _context, int i) {
          // Add a one-pixel-high divider widget before each row
          // in the ListView.
          if (i.isOdd) {
            return Divider();
          }

          // The syntax "i ~/ 2" divides i by 2 and returns an
          // integer result.
          // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
          // This calculates the actual number of word pairings
          // in the ListView,minus the divider widgets.
          final int index = i ~/ 2;
          // If you've reached the end of the available word
          // pairings...
          if (index >= _suggestions.length) {
            // ...then generate 10 more and add them to the
            // suggestions list.
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });*/
    );
  }

  _buildRow(Color color) {
    return Container(
        height: 82,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 0,
            color: color,
            child: ListTile(
              leading: Image.asset('assets/images/nooor.png',
                  fit: BoxFit.fill,
                  height: double.infinity,
                  alignment: Alignment.center),
              title: Text(
                'تجميل عرائس',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Tajawal-Extrabold',
                    color: color.withOpacity(1)),
              ),
              contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add from here...
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('اختر من الاقسام',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Tajawal-Extrabold',
                color: Colors.black)),
      ),
      body: _buildSuggestions(),
    );
  }
}
