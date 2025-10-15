// FILE: lib/providers/db_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_mentor/services/db/app_database.dart';

/// Riverpod provider for the DB instance.
final dbProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

/// Next Steps:
/// - Add repositories and aggregation providers built on top of this provider.

