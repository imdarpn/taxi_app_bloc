part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState.initial({
    @Default([]) List<FaqModel> faqList,
    int? expandedValue,
  }) = _Initial;
}
