// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeeklyReview _$WeeklyReviewFromJson(Map<String, dynamic> json) =>
    _WeeklyReview(
      id: (json['id'] as num).toInt(),
      weekStart: DateTime.parse(json['weekStart'] as String),
      metrics: (json['metrics'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      wins: json['wins'] as String?,
      slipUps: json['slipUps'] as String?,
      lessons: json['lessons'] as String?,
    );

Map<String, dynamic> _$WeeklyReviewToJson(_WeeklyReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekStart': instance.weekStart.toIso8601String(),
      'metrics': instance.metrics,
      'wins': instance.wins,
      'slipUps': instance.slipUps,
      'lessons': instance.lessons,
    };
