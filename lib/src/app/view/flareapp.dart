import 'package:flutter/material.dart' show ThemeData;

import 'package:mvc_application/mvc.dart' show AppView;

import 'package:flutter_flare_sandbox/src/view.dart';

import 'package:flutter_flare_sandbox/src/controller.dart' as con;

class FlareApp extends AppView {
  FlareApp()
    : super(
      title: 'Flutter Flare Demo',
      //con: con,
      home: Home(),
      debugPaintSizeEnabled: true
    );

  //@override
  //ThemeData onTheme() => con.ThemeCon.theme;
}
