import 'package:mvc_pattern/mvc_pattern.dart';

import 'package:flutter_flare_sandbox/src/random_words/model/randomwords.dart';

class Con extends ControllerMVC {
  static int get length => Model.length;

  static void addAll(int count) => Model.addAll(count);

  static String something(int index) => Model.wordPair(index);

  static bool contains(String something) => Model.contains(something);

  static void somethingHappens(String something) => Model.save(something);

  static Iterable<ListTile> mapHappens<ListTile>(Function f) => Model.saved(f);
}