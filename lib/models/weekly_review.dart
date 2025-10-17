// FILE: lib/models/weekly_review.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_review.freezed.dart';
part 'weekly_review.g.dart';

/// WeeklyReview model for journaling weekly metrics and notes.
@freezed
class WeeklyReview with _$WeeklyReview {
  const factory WeeklyReview({
    required int id,
    required DateTime weekStart,
    required Map<String, double> metrics,
    String? wins,
    String? slipUps,
    String? lessons,
  }) = _WeeklyReview;

  factory WeeklyReview.fromJson(Map<String, dynamic> json) => _$WeeklyReviewFromJson(json);

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement lessons
  String? get lessons => throw UnimplementedError();

  @override
  // TODO: implement metrics
  Map<String, double> get metrics => throw UnimplementedError();

  @override
  // TODO: implement slipUps
  String? get slipUps => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement weekStart
  DateTime get weekStart => throw UnimplementedError();

  @override
  // TODO: implement wins
  String? get wins => throw UnimplementedError();
}

/// Next Steps:
/// - Provide typed metrics schema or dropdowns for common metrics in UI.
