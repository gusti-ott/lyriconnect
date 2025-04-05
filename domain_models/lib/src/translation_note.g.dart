// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationNote _$TranslationNoteFromJson(Map<String, dynamic> json) =>
    TranslationNote(
      originalText: json['originalText'] as String,
      translatedText: json['translatedText'] as String,
      grammarExplanation: json['grammarExplanation'] as String?,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$TranslationNoteToJson(TranslationNote instance) =>
    <String, dynamic>{
      'originalText': instance.originalText,
      'translatedText': instance.translatedText,
      'grammarExplanation': instance.grammarExplanation,
      'tags': instance.tags,
    };
