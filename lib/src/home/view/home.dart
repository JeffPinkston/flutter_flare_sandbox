import 'package:flutter/material.dart';

import 'package:flutter_flare_sandbox/src/model.dart';

import 'package:flutter_flare_sandbox/src/view.dart';

import 'package:flutter_flare_sandbox/src/controller.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Home')
    );
  }
}
