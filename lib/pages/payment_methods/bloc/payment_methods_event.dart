part of 'payment_methods_bloc.dart';

@freezed
class PaymentMethodsEvent with _$PaymentMethodsEvent {
  const factory PaymentMethodsEvent.started() = _Started;

  const factory PaymentMethodsEvent.onTapPaymentType(
      {required PaymentType paymentType}) = _OnTapPaymentType;
}
