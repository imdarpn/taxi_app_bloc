part of 'location_permission_bloc.dart';

@freezed
class LocationPermissionEvent with _$LocationPermissionEvent {
  const factory LocationPermissionEvent.started() = _Started;
}
