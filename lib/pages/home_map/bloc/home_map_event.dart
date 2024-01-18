part of 'home_map_bloc.dart';

@freezed
class HomeMapEvent with _$HomeMapEvent {
  const factory HomeMapEvent.started() = _MapStarted;

  const factory HomeMapEvent.mapCreated({
    required GoogleMapController googleMapController, required bool isDark
  }) = _MapCreated;

  const factory HomeMapEvent.onCameraMove({required CameraPosition position}) =
      _OnCameraMove;

  const factory HomeMapEvent.onCameraIdle() = _OnCameraIdle;


  const factory HomeMapEvent.onCurrentLocation() = _OnCurrentLocation;
  const factory HomeMapEvent.onMapStyleChanged({required bool isDark}) = _OnMapStyleChanged;
}
