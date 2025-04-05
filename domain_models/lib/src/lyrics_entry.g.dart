// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LyricsEntry _$LyricsEntryFromJson(Map<String, dynamic> json) => LyricsEntry(
      originalLine: json['originalLine'] as String,
      translationNotes: (json['translationNotes'] as List<dynamic>)
          .map((e) => TranslationNote.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LyricsEntryToJson(LyricsEntry instance) =>
    <String, dynamic>{
      'originalLine': instance.originalLine,
      'translationNotes': instance.translationNotes,
    };
