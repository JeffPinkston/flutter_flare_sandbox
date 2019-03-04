import 'package:flutter/material.dart' show ThemeData;

import 'package:mvc_application/mvc.dart' show AppView;

import 'package:flutter_flare_sandbox/src/view.dart';

import 'package:flutter_flare_sandbox/src/controller.dart' as con;

class FlareApp extends AppView {

  factory FlareApp(){
    if(_this == null) _this = FlareApp._();
    return _this;
  }
  static FlareApp _this;

  FlareApp._()
      : super(
    title: 'Flutter Demo',
    con: con.FlareApp(),
    home: Home(),
  );
  @override
  ThemeData onTheme() => con.ThemeCon.theme;
}
