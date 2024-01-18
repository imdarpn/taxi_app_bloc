class FaqModel {
  final int? id;
  final String? question;
  final String? answer;
  bool isExpanded;

  FaqModel({
    this.id,
    this.question,
    this.answer,
    this.isExpanded = false,
  });
}
