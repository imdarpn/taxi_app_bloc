import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'network_connectivity_event.dart';

part 'network_connectivity_state.dart';

part 'network_connectivity_bloc.freezed.dart';

@Injectable()
class NetworkConnectivityBloc
    extends Bloc<NetworkConnectivityEvent, NetworkConnectivityState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  NetworkConnectivityBloc() : super(const NetworkConnectivityState.initial()) {
    on<NetworkConnectivityEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await emit.forEach(
              _connectivity.onConnectivityChanged,
              onData: (result) {
                if (result == ConnectivityResult.mobile ||
                    result == ConnectivityResult.wifi) {
                  return const NetworkConnectivityState.gained();
                } else {
                  return const NetworkConnectivityState.lost();
                }
              },
              onError: (error, stackTrace) {
                return const NetworkConnectivityState.lost();
              },
            );
          },
        );
      },
    );
  }
}
