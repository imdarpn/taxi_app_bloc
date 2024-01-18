part of 'payment_methods_bloc.dart';

@freezed
class PaymentMethodsState with _$PaymentMethodsState {
  const factory PaymentMethodsState.initial(
      {@Default(<PaymentMethodModel>[])
      List<PaymentMethodModel> paymentMethodList}) = _Initial;
}
