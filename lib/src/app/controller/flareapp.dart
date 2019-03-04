import 'package:flutter_flare_sandbox/src/controller.dart' show AppController, ThemeCon;

class FlareApp extends AppController {
  factory FlareApp() {
    if (_this == null) _this = FlareApp._();
    return _this;
  }
  static FlareApp _this;

  FlareApp._() : super();

  @override
  void initApp() {
    stateMVC.add(ThemeCon());
  }

  @override
  Future<bool> init() async {
    bool init = await super.init();
    //if (init) init = await LocationCon().init();
    //if (init) init = await LocationTimer.init();
    return init;
  }

  void dispose() {
    /// Close the Location database.
    //LocationMod.dispose();
    super.dispose();
  }
}