import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

String onboardKey = "GD2G82CG9G82VDFGVD22DVG";

class AppService with ChangeNotifier {
  late final SharedPreferences sharedPreferences;
  final StreamController<bool> _loginStateChange =
      StreamController<bool>.broadcast();
  bool _loginState = true;
  bool _initialized = false;

  AppService(this.sharedPreferences);

  bool get loginState => _loginState;
  bool get initialized => _initialized;

  Stream<bool> get loginStateChange => _loginStateChange.stream;

  set loginState(bool state) {
    _loginState = state;
    _loginStateChange.add(state);
    notifyListeners();
  }

  set initialized(bool value) {
    _initialized = value;
    notifyListeners();
  }

  Future<void> onAppStart() async {
    /* _loginState =
        await FlutterSecureStorage().read(key: 'token') != null ? true : false; */

    _initialized = true;
    //FlutterNativeSplash.remove();
    notifyListeners();
  }
}
