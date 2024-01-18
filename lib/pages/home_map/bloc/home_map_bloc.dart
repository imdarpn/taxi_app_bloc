import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../../core/common/app_constants/app_value_constants.dart';
import '../../../core/common/common_methods.dart';

import '../../../core/common/view_models/address_model.dart';

part 'home_map_event.dart';

part 'home_map_state.dart';

part 'home_map_bloc.freezed.dart';

@Injectable()
class HomeMapBloc extends Bloc<HomeMapEvent, HomeMapState> {
  HomeMapBloc()
      : super(
          const HomeMapState.initial(),
        ) {
    on<HomeMapEvent>(
      (event, emit) async {
        await event.when(
          /// screen started
          started: () {
            emit(
              state.copyWith(
                addressList: [
                  AddressModel(
                    0,
                    "",
                    const LatLng(0, 0),
                    TextEditingController(),
                  ),
                  AddressModel(
                    1,
                    "",
                    const LatLng(0, 0),
                    TextEditingController(),
                  ),
                ],
              ),
            );
          },

          /// map created
          mapCreated: (googleMapController, bool isDark) async {
            googleMapController
                .setMapStyle(await CommonMethods.getMapStyle(isDark));

            // get current lat lng and address
            await CommonMethods.getCurrentAddress();

            List<AddressModel> addressList = <AddressModel>[];

            addressList.addAll(
              [
                AddressModel(
                  0,
                  AppValueConstants.displayAddress.value,
                  AppValueConstants.currentLatLng.value,
                  TextEditingController(
                      text: AppValueConstants.displayAddress.value),
                ),
                AddressModel(
                  1,
                  "",
                  const LatLng(23.090108232530106, 72.53450933843851),
                  TextEditingController(),
                ),
              ],
            );
            // store lat lng and address in state
            emit(
              state.copyWith(
                googleMapController: googleMapController,
                currentLatLng: AppValueConstants.currentLatLng.value,
                cameraLatLng: AppValueConstants.currentLatLng.value,
                currentAddress: AppValueConstants.displayAddress.value,
                markers: {
                  Marker(
                    markerId: MarkerId(
                      AppValueConstants.currentLatLng.value.toString(),
                    ),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueBlue),
                    position: AppValueConstants.currentLatLng.value,
                  )
                },
                addressList: addressList,
              ),
            );

            // animate to new lat lng
            CommonMethods.animateCameraToLocation(
              mapController: googleMapController,
              targetLocation: state.currentLatLng,
            );
          },

          /// on map move
          onCameraMove: (position) {
            emit(
              state.copyWith(
                cameraLatLng: position.target,
              ),
            );
          },

          /// on camera idle
          onCameraIdle: () async {
            List<AddressModel> addressList = state.addressList.toList();

            String? address = (await placemarkFromCoordinates(
                        state.cameraLatLng.latitude,
                        state.cameraLatLng.longitude))[0]
                    .street ??
                "";

            addressList[0] = AddressModel(
              0,
              address,
              LatLng(state.cameraLatLng.latitude, state.cameraLatLng.longitude),
              TextEditingController(text: address),
            );

            emit(
              state.copyWith(
                addressList: addressList,
                markers: {
                  Marker(
                    markerId: MarkerId(
                      state.cameraLatLng.toString(),
                    ),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueBlue),
                    position: state.cameraLatLng,
                  )
                },
              ),
            );
          },
          onCurrentLocation: () async {
            // get current lat lng and address
            await CommonMethods.getCurrentAddress();

            List<AddressModel> addressList = state.addressList.toList();

            addressList[0] = AddressModel(
              0,
              AppValueConstants.displayAddress.value,
              AppValueConstants.currentLatLng.value,
              TextEditingController(
                  text: AppValueConstants.displayAddress.value),
            );

            // store lat lng and address in state
            emit(
              state.copyWith(
                currentLatLng: AppValueConstants.currentLatLng.value,
                cameraLatLng: AppValueConstants.currentLatLng.value,
                markers: {
                  Marker(
                    markerId: MarkerId(
                      AppValueConstants.currentLatLng.value.toString(),
                    ),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueBlue),
                    position: AppValueConstants.currentLatLng.value,
                  )
                },
                addressList: addressList,
              ),
            );

            // animate to new lat lng
            CommonMethods.animateCameraToLocation(
              mapController: state.googleMapController!,
              targetLocation: state.currentLatLng,
            );
          },
          onMapStyleChanged: (isDark) async {
            print("onMapStyleChanged called");
            print("--- isdark --> $isDark");
            state.googleMapController
                ?.setMapStyle(await CommonMethods.getMapStyle(isDark));
          },
        );
      },
    );
  }
}
