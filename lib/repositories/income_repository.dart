// FILE: lib/repositories/income_repository.dart
import 'package:money_mentor/services/db/app_database.dart';

/// Repository pattern for Income & Expense entries.
/// Keeps DB access separate from UI and business logic.

class IncomeRepository {
  final AppDatabase db;
  IncomeRepository(this.db);

  Future<int> createEntry(IncomeExpensesCompanion entry) => db.insertIncomeExpense(entry);
  Future<List<IncomeExpense>> fetchAll() => db.getAllIncomeExpenses();
  Future<int> updateEntry(IncomeExpense entry) => db.updateIncomeExpenseData(entry);
  Future<int> deleteEntry(int id) => db.deleteIncomeExpenseById(id);

/// Next Steps:
/// - Add aggregated queries: monthly total, category breakdown.
/// - Add paginated fetches and search methods.
}
