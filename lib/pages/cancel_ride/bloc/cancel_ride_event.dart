part of 'cancel_ride_bloc.dart';

@freezed
class CancelRideEvent with _$CancelRideEvent {
  const factory CancelRideEvent.started() = _Started;
  const factory CancelRideEvent.radioChange({required int value}) = _RadioChange;

}
