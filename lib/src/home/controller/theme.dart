import 'package:flutter/material.dart' show Colors, MaterialColor, ThemeData;

import 'package:flutter_flare_sandbox/src/controller.dart' show ControllerMVC;

class ThemeCon extends ControllerMVC {
  static ThemeCon _this;

  static ThemeData get theme => _theme;
  static ThemeData _theme;

  static MaterialColor get color => _color;
  static MaterialColor _color;

  factory ThemeCon() {
    if (_this == null) _this = ThemeCon._();

    return _this;
  }
  ThemeCon._();
}