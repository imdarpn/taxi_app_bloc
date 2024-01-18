part of 'network_connectivity_bloc.dart';

@freezed
class NetworkConnectivityState with _$NetworkConnectivityState {
  const factory NetworkConnectivityState.initial() = NetworkInitital;
  const factory NetworkConnectivityState.lost() = NetworkDisconnected;
  const factory NetworkConnectivityState.gained() = NetworkConnected;
}
