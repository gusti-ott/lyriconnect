// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocab_source_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VocabSourceReference _$VocabSourceReferenceFromJson(
        Map<String, dynamic> json) =>
    VocabSourceReference(
      song: Song.fromJson(json['song'] as Map<String, dynamic>),
      lyricLine: json['lyricLine'] as String?,
    );

Map<String, dynamic> _$VocabSourceReferenceToJson(
        VocabSourceReference instance) =>
    <String, dynamic>{
      'song': instance.song,
      'lyricLine': instance.lyricLine,
    };
