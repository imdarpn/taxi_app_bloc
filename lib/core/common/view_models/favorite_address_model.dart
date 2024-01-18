import 'package:taxi_customer_demo/core/enums/address_type.dart';

class FavoriteAddressModel {
  final AddressType addressType;
  final String address;

  FavoriteAddressModel({
    this.addressType = AddressType.Home,
    this.address = "",
  });
}
