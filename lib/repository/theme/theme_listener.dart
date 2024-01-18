import 'dart:async';

import 'package:flutter/material.dart';


mixin ThemeListener {
  final window = WidgetsBinding.instance.window;
  final _controller = StreamController<Brightness>.broadcast();

  Stream<Brightness> get stream => _controller.stream;
  init() {
    window.onPlatformBrightnessChanged = () {
      final brightness = window.platformBrightness;
      _controller.sink.add(brightness);
    };
  }

  dispose(){
    _controller.close();
  }

}