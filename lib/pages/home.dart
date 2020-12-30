import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_word_generator_app/classes/styles.dart';
import 'package:german_words/german_words.dart';
import 'package:random_word_generator_app/pages/info.dart';

class Home extends StatefulWidget {
  @override
  createState() => new HomeState();
}

class HomeState extends State<Home> {
  int _random;
  // ignore: unnecessary_getters_setters
  int get random => _random;
  // ignore: unnecessary_getters_setters
  set random(int ran) => _random = ran;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(title: new Text('Random Words', style: Styles.textTitle)),
      body: _buildHome(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new FloatingActionButton(
                heroTag: 'info',
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Info())),
                tooltip: 'Info',
                child: new Icon(Icons.info_outline),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new FloatingActionButton(
                  heroTag: 'refresh',
                  onPressed: () => _setRandomWord(),
                  tooltip: 'Refresh word',
                  child: new Icon(Icons.refresh)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHome() {
    _random = Random().nextInt(germanWords.length);
    return Container(
      child: Center(
        child: Text(
          germanWords[_random],
          style: Styles.textLowerTitle,
        ),
      ),
    );
  }

  void _setRandomWord() {
    setState(() {});
  }
}
