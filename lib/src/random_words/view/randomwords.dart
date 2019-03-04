import 'package:flutter/material.dart';

import 'package:flutter_flare_sandbox/src/random_words/controller/randomwords.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends StateMVC<RandomWords> {
  _RandomWordsState() : super(Con());

  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Startup Name Generator'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                pushSaved(context);
              },
            ),
          ],
        ),
        body: _buildSuggestions()
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding:EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;

        if (index >= Con.length) {
          Con.addAll(10);
        }
        return buildRow(index);
      }
    );
  }

  void pushSaved(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = this.tiles;

          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();

          return Scaffold(
            appBar: AppBar(
                title: const Text('Saved Suggestions'),
              ),
            body: ListView(children: divided),
          );
        }
      )
    );
  }

  Widget buildRow(int index) {
    if (index == null && index < 0) index = 0;

    String something = Con.something(index);

    final alreadySaved = Con.contains(something);

    return ListTile(
      title: Text(
        something,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          Con.somethingHappens(something);
        });
      },
    );
  }

  Iterable<ListTile> get tiles => Con.mapHappens(
        (String something) {
          return ListTile(
            title: Text(
              something,
              style: _biggerFont,
            ),
          );
        },
      );
}