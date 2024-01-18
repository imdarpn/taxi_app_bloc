part of 'ride_map_bloc.dart';

@freezed
class RideMapState with _$RideMapState {
  const factory RideMapState.initial({
    @Default(RideViewStatus.selectRide) RideViewStatus rideViewStatus,
    @Default(LatLng(20.593683, 78.962883)) LatLng initialLatLng,
    GoogleMapController? googleMapController,
    @Default([]) List<AddressModel> addressList,
    @Default(<Marker>{}) Set<Marker> markers,
  }) = _Initial;
}
