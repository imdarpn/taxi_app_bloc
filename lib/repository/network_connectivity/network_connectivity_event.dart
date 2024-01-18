part of 'network_connectivity_bloc.dart';

@freezed
class NetworkConnectivityEvent with _$NetworkConnectivityEvent {
  const factory NetworkConnectivityEvent.started() = _Started;
}
