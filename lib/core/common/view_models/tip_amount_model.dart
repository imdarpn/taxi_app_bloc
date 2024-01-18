import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_amount_model.freezed.dart';

@freezed
class TipAmountModel with _$TipAmountModel {


  const factory TipAmountModel({
    @Default(0) int amount,
    @Default(false) bool isSelected,
  }) =
  _TipAmountModel;

@override
  String toString() {
    // TODO: implement toString
    return "amount: $amount --isSelected: $isSelected";
  }
}
