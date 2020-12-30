import 'package:flutter/material.dart';
import 'package:random_word_generator_app/classes/styles.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: Text(
        'About',
        style: Styles.textTitle,
      )),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "App that shows a random german word. A package with the 6000 most used german words is used."),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Version Number: 1.0.0'),
            ),
          )
        ],
      ),
    );
  }
}
