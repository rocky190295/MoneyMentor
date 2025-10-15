// FILE: lib/models/income_expense.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'income_expense.freezed.dart';
part 'income_expense.g.dart';

/// IncomeExpense model derived from Excel-inspired schema.
/// Fields:
/// - id: uuid or int primary key
/// - date: transaction date
/// - category: category (Food, Transport, etc.)
/// - description: free text description or seeded dropdown
/// - amount: positive number (use negative for expense if you prefer)
/// - typeFixedOrVariable: "Fixed" | "Variable"
/// - notes: optional
/// - weekNum: computed week number (1-53)
@freezed
class IncomeExpense with _$IncomeExpense {
  const factory IncomeExpense({
    required int id,
    required DateTime date,
    required String category,
    required String description,
    required double amount,
    required String typeFixedOrVariable,
    String? notes,
    required int weekNum,
  }) = _IncomeExpense;

  factory IncomeExpense.fromJson(Map<String, dynamic> json) => _$IncomeExpenseFromJson(json);
}

/// Next Steps:
/// - Use Drift companion class mapping in services/db.dart
/// - Add validation helper in utils (e.g., non-negative amount)
