part of 'faq_bloc.dart';

@freezed
class FaqEvent with _$FaqEvent {
  const factory FaqEvent.started() = _Started;
  const factory FaqEvent.expansionChanged({required int index}) = _ExpansionChanged;
}
