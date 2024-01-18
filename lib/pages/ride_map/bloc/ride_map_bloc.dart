import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import "../enum/ride_view_status.dart";
import '../../../core/common/common_methods.dart';
import '../../../core/common/view_models/address_model.dart';

part 'ride_map_event.dart';

part 'ride_map_state.dart';

part 'ride_map_bloc.freezed.dart';

@Injectable()
class RideMapBloc extends Bloc<RideMapEvent, RideMapState> {
  RideMapBloc() : super(const RideMapState.initial()) {
    on<RideMapEvent>(
      (event, emit) async {
        await event.when(
          started: (addressList) {
            emit(
              state.copyWith(addressList: addressList.toList()),
            );

            print("ADDRESS LIST --- ${addressList.length}");
          },
          mapCreated: (googleMapController, isDark) async {
            googleMapController
                .setMapStyle(await CommonMethods.getMapStyle(isDark));

            Set<Marker> markers = state.addressList.map((element) {
              return Marker(
                markerId: MarkerId(
                  element.addressLatLng.toString(),
                ),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueBlue),
                position: element.addressLatLng,
              );
            }).toSet();

            emit(
              state.copyWith(
                googleMapController: googleMapController,
                markers: markers,
              ),
            );

            CommonMethods.animateCameraToLocation(
              mapController: googleMapController,
              targetLocation: state.addressList.first.addressLatLng,
            );
          },
          onMapStyleChanged: (isDark) async {
            print("onMapStyleChanged called");
            print("--- isdark --> $isDark");
            state.googleMapController
                ?.setMapStyle(await CommonMethods.getMapStyle(isDark));
          },
          onStatusChanged: (rideViewStatus) async {
            emit(
              state.copyWith(rideViewStatus: rideViewStatus),
            );

            /*if (rideViewStatus == RideViewStatus.findDriver) {
              await emit.forEach(
                start(),
                onData: (data) {
                  print("DATA -- $data");
                  return state.copyWith(progress: data / 10);
                },
              );
            }*/
          },
        );
      },
    );
  }

/*Stream<double> start() async* {
    double progress = 0;
    while (progress != 10) {
      progress++;
      yield progress;
      await Future.delayed(const Duration(milliseconds: 700));
    }
  }*/
}
