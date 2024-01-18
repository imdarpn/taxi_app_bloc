part of 'my_account_bloc.dart';

@freezed
class MyAccountEvent with _$MyAccountEvent {
  const factory MyAccountEvent.started() = _Started;
}
