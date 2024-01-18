import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../core/common/view_models/address_model.dart';

part 'select_location_event.dart';

part 'select_location_state.dart';

part 'select_location_bloc.freezed.dart';

@injectable
class SelectLocationBloc
    extends Bloc<SelectLocationEvent, SelectLocationState> {
  SelectLocationBloc() : super(const SelectLocationState.initial()) {
    on<SelectLocationEvent>(
      (event, emit) {
        event.when(
          addField: () {
            List<AddressModel> addressModelList =
                state.addressModelList.toList();
            addressModelList.add(AddressModel(
                addressModelList.length,
                "Excellent webworld",
                LatLng(0, 0),
                TextEditingController(text: "")));

            emit(state.copyWith(addressModelList: addressModelList));
          },
          started: (addressList) {
            emit(
              state.copyWith(addressModelList: addressList.toList()),
            );
          },
          removeField: (value) {
            List<AddressModel> addressModelList =
                state.addressModelList.toList();

            addressModelList.removeAt(value);

            emit(state.copyWith(addressModelList: addressModelList));
          },
        );
      },
    );
  }
}
