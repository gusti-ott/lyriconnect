import 'package:json_annotation/json_annotation.dart';

import 'translation_note.dart';

part 'lyrics_entry.g.dart';

@JsonSerializable()
class LyricsEntry {
  final String originalLine;
  final List<TranslationNote> translationNotes;

  LyricsEntry({
    required this.originalLine,
    required this.translationNotes,
  });

  factory LyricsEntry.fromJson(Map<String, dynamic> json) => _$LyricsEntryFromJson(json);
  Map<String, dynamic> toJson() => _$LyricsEntryToJson(this);
}
