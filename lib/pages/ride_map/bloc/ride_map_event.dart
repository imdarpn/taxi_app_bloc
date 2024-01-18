part of 'ride_map_bloc.dart';

@freezed
class RideMapEvent with _$RideMapEvent {
  const factory RideMapEvent.started(
      {required List<AddressModel> addressList}) = _Started;

  const factory RideMapEvent.mapCreated({
    required GoogleMapController googleMapController,
    required bool isDark,
  }) = _MapCreated;

  const factory RideMapEvent.onMapStyleChanged({required bool isDark}) =
      _OnMapStyleChanged;

  const factory RideMapEvent.onStatusChanged(
      {required RideViewStatus rideViewStatus}) = _OnStatusChanged;
}
