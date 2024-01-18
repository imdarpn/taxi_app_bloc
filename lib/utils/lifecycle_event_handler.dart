import 'package:flutter/material.dart';

class LifecycleEventHandler extends WidgetsBindingObserver {
  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        print('Back to app');
        break;
      case AppLifecycleState.paused:
        /*print(
            "CURRENT STATE --- ${AppValueConstants.globalKey.currentState?.canPop()}");
        print(
            "CURRENT STATE NAME --- ${ModalRoute.of(AppValueConstants.globalKey.currentContext!)?.settings.name}");*/
        print('App minimised or Screen locked');
        break;
      case AppLifecycleState.inactive:
        print('App minimised or Screen inactive');
        break;
      case AppLifecycleState.detached:
        print('App minimised or Screen detached');
        break;
      default:
    }
  }
}
