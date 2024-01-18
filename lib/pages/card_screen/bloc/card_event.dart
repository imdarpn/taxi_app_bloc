part of 'card_bloc.dart';

@freezed
class CardEvent with _$CardEvent {
  const factory CardEvent.started() = _Started;

  const factory CardEvent.onCreditCardChanged({
    required CreditCardModel creditCardModel,
  }) = _OnCreditCardChanged;

  const factory CardEvent.onValidateCard({
    required GlobalKey<FormState> formKey,
  }) = _OnValidateCard;
}
