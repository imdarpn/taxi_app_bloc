part of 'make_complaint_bloc.dart';

@freezed
class MakeComplaintEvent with _$MakeComplaintEvent {
  const factory MakeComplaintEvent.started() = _Started;
}
