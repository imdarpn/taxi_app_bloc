import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressModel {
  final int index;
  final String address;
  final LatLng addressLatLng;
  final TextEditingController addressController;

  AddressModel(
      this.index, this.address, this.addressLatLng, this.addressController);
}