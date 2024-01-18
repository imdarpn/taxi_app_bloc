part of 'select_location_bloc.dart';

@freezed
class SelectLocationEvent with _$SelectLocationEvent {
  const factory SelectLocationEvent.started({required List<AddressModel> addressList}) = _Started;
  const factory SelectLocationEvent.addField() = _AddField;
  const factory SelectLocationEvent.removeField({@Default(0) int index}) = _RemoveField;
}
