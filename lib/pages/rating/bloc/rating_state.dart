part of 'rating_bloc.dart';

@freezed
class RatingState with _$RatingState {
  const factory RatingState.initial(
          {@Default(<TipAmountModel>[]) List<TipAmountModel> tipAmountList}) =
      _Initial;

}
