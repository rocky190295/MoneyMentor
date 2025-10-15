// FILE: lib/providers/sample_providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_mentor/providers/db_provider.dart';
import 'package:money_mentor/repositories/income_repository.dart';

final incomeRepositoryProvider = Provider<IncomeRepository>((ref) {
  final db = ref.watch(dbProvider);
  return IncomeRepository(db);
});

/// Next Steps:
/// - Provide StreamProviders for reactive UI updates as DB changes.

