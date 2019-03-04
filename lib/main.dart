import 'package:flutter/material.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

import 'package:flutter_flare_sandbox/src/view.dart';

void main() => runApp(MyApp());

class MyApp extends AppMVC {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
}
