import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dekat_tuhan/bible_verse_pages.dart';
import 'package:dekat_tuhan/church_pages.dart';
import 'package:dekat_tuhan/profile_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MainApp()
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  //Create All Pages
  final BibleVersePages _bibleVersePages = BibleVersePages();
  final ChurchPages _churchPages = ChurchPages();
  final ProfilePages _profilePages = ProfilePages();

  Widget _showPages = new ChurchPages();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0 :
        return _churchPages;
        break;
      case 1 :
        return _bibleVersePages;
        break;
      case 2 :
        return _profilePages;
        break;
      default :
        return new Container(
          child: Text('Page Not Found',
            style: TextStyle(fontSize: 30.0),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _showPages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueGrey,
        color: Colors.blueGrey[900],
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.collections_bookmark, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white)
        ],
        onTap: (index) {
          setState(() {
            _showPages = _pageChooser(index);
          });
        },
      ),
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Dekat Tuhan'),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}
