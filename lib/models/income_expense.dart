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

  @override
  // TODO: implement amount
  double get amount => throw UnimplementedError();

  @override
  // TODO: implement category
  String get category => throw UnimplementedError();

  @override
  // TODO: implement date
  DateTime get date => throw UnimplementedError();

  @override
  // TODO: implement description
  String get description => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement notes
  String? get notes => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement typeFixedOrVariable
  String get typeFixedOrVariable => throw UnimplementedError();

  @override
  // TODO: implement weekNum
  int get weekNum => throw UnimplementedError();
}

/// Next Steps:
/// - Use Drift companion class mapping in services/db.dart
/// - Add validation helper in utils (e.g., non-negative amount)
