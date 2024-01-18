part of 'home_map_bloc.dart';

@freezed
class HomeMapState with _$HomeMapState {
  const factory HomeMapState.initial({
    @Default(LatLng(20.593683, 78.962883)) LatLng currentLatLng,
    @Default(LatLng(0, 0)) LatLng cameraLatLng,
    @Default(<Marker> {}) Set<Marker> markers,
    @Default([]) List<AddressModel> addressList,
    GoogleMapController? googleMapController,
    @Default("") String currentAddress,
  }) = _Initial;
}
