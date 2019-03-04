import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter_flare_sandbox/src/model.dart';

import 'package:flutter_flare_sandbox/src/view.dart';

import 'package:flutter_flare_sandbox/src/controller.dart';
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  
  final String title;

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isOn = false;
  GlobalKey smileyKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width:100,
        key: smileyKey,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isOn = !_isOn;
            });
          },
          child: FlareActor("animations/smiley_switch.flr",
            shouldClip: false,
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _isOn ? "On" : "Off")
          ),
        )
    );
    
  }
}
