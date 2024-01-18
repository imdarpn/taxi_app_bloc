part of 'select_location_bloc.dart';

@freezed
class SelectLocationState with _$SelectLocationState {
  const factory SelectLocationState.initial({@Default([]) List<AddressModel> addressModelList}) = _Initial;
}
