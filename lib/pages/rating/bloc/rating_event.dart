part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {
  const factory RatingEvent.started() = _Started;
  const factory RatingEvent.tipSelected({required int index}) = _TipSelected;
}
