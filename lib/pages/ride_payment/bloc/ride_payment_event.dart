part of 'ride_payment_bloc.dart';

@freezed
class RidePaymentEvent with _$RidePaymentEvent {
  const factory RidePaymentEvent.started() = _Started;
}
