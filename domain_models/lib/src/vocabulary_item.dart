import 'package:json_annotation/json_annotation.dart';

import 'vocab_source_reference.dart';

part 'vocabulary_item.g.dart';

@JsonSerializable()
class VocabularyItem {
  final String word;
  final String meaning;
  final String? explanation;
  final List<String> tags;
  final List<VocabSourceReference> sources;
  final DateTime addedAt;

  VocabularyItem({
    required this.word,
    required this.meaning,
    this.explanation,
    required this.tags,
    required this.sources,
    required this.addedAt,
  });

  factory VocabularyItem.fromJson(Map<String, dynamic> json) => _$VocabularyItemFromJson(json);
  Map<String, dynamic> toJson() => _$VocabularyItemToJson(this);

  VocabularyItem copyWith({
    String? word,
    String? meaning,
    String? explanation,
    List<String>? tags,
    List<VocabSourceReference>? sources,
    DateTime? addedAt,
  }) {
    return VocabularyItem(
      word: word ?? this.word,
      meaning: meaning ?? this.meaning,
      explanation: explanation ?? this.explanation,
      tags: tags ?? this.tags,
      sources: sources ?? this.sources,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
