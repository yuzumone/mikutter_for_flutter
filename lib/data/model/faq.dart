import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.g.dart';

@JsonSerializable(createToJson: false)
class Faq {
  final String question;
  final String answer;

  Faq(this.question, this.answer);

  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);

  @override
  String toString() {
    return 'Faq<Q: $question, A: $answer>';
  }
}
