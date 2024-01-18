part of 'card_bloc.dart';

@freezed
class CardState with _$CardState {
  const factory CardState.initial({
    @Default("") String cardNumber,
    @Default("") String expiryDate,
    @Default("") String cardHolderName,
    @Default("") String cvvCode,
    @Default(false) bool isCvvFocused,
    @Default(false) bool useGlassMorphism,
    @Default(false) bool useBackgroundImage,
  }) = _Initial;
}
