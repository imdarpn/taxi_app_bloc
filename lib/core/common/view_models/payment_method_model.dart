import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_model.freezed.dart';

@freezed
class PaymentMethodModel with _$PaymentMethodModel{
  const factory PaymentMethodModel({
    @Default("") String paymentMethodTitle,
    @Default(<PaymentType>[]) List<PaymentType> paymentTypeList,
  }) = _PaymentMethodModel;
}


@freezed
class PaymentType with  _$PaymentType{
  const factory PaymentType({
    @Default("") String paymentTileName,
    @Default("") String paymentTypeImage,
    @Default(false) bool isSelected,
    @Default(false) bool isReadOnly,
  }) = _PaymentType;
}
