// FILE: lib/utils/date_utils.dart
/// Small date utilities used across the app.
int weekNumber(DateTime date) {
  // ISO week number simple implementation (approx)
  final firstDay = DateTime(date.year, 1, 1);
  final diff = date.difference(firstDay).inDays;
  return (diff / 7).floor() + 1;
}

/// Next Steps:
/// - Replace with robust ISO-8601 week number implementation.

