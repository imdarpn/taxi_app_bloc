import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AppValueConstants {
  static ValueNotifier<int> currentScreen = ValueNotifier(9999);
  ValueNotifier<bool> isGuestMode = ValueNotifier<bool>(true);
  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
  static ValueNotifier<double> currentLatitude = ValueNotifier<double>(0.0);
  static ValueNotifier<double> currentLongitude = ValueNotifier<double>(0.0);
  static ValueNotifier<LatLng> currentLatLng = ValueNotifier<LatLng>(const LatLng(0, 0));
  static ValueNotifier<String> displayAddress = ValueNotifier<String>("");
}
