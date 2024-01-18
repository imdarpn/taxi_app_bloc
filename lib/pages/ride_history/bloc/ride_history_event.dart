part of 'ride_history_bloc.dart';

@freezed
class RideHistoryEvent with _$RideHistoryEvent {
  const factory RideHistoryEvent.started() = _Started;
}
