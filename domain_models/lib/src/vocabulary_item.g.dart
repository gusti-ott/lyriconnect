// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VocabularyItem _$VocabularyItemFromJson(Map<String, dynamic> json) =>
    VocabularyItem(
      word: json['word'] as String,
      meaning: json['meaning'] as String,
      explanation: json['explanation'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      sources: (json['sources'] as List<dynamic>)
          .map((e) => VocabSourceReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      addedAt: DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$VocabularyItemToJson(VocabularyItem instance) =>
    <String, dynamic>{
      'word': instance.word,
      'meaning': instance.meaning,
      'explanation': instance.explanation,
      'tags': instance.tags,
      'sources': instance.sources,
      'addedAt': instance.addedAt.toIso8601String(),
    };
