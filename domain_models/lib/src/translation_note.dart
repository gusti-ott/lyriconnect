import 'package:json_annotation/json_annotation.dart';

part 'translation_note.g.dart';

@JsonSerializable()
class TranslationNote {
  final String originalText;
  final String translatedText;
  final String? grammarExplanation;
  final List<String> tags;

  TranslationNote({
    required this.originalText,
    required this.translatedText,
    this.grammarExplanation,
    required this.tags,
  });

  factory TranslationNote.fromJson(Map<String, dynamic> json) => _$TranslationNoteFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationNoteToJson(this);
}
