import 'package:json_annotation/json_annotation.dart';

import 'song.dart';

part 'vocab_source_reference.g.dart';

@JsonSerializable()
class VocabSourceReference {
  final Song song;
  final String? lyricLine;

  VocabSourceReference({
    required this.song,
    this.lyricLine,
  });

  factory VocabSourceReference.fromJson(Map<String, dynamic> json) => _$VocabSourceReferenceFromJson(json);
  Map<String, dynamic> toJson() => _$VocabSourceReferenceToJson(this);
}
