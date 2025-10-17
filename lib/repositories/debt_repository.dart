// FILE: lib/repositories/debt_repository.dart
import 'package:money_mentor/services/db/app_database.dart';
import 'package:drift/drift.dart';

class DebtRepository {
  final AppDatabase db;
  DebtRepository(this.db);

  Future<List<DebtInstrument>> fetchAll() => db.getAllDebts();

  /// Quick-pay flow:
  /// - Start a transaction that updates DebtInstruments.balance,
  /// - Inserts a PaymentHistory record,
  /// - Returns updated debt object.
  Future<void> quickPay({
    required int debtId,
    required double amount,
    required String note,
  }) async {
    return db.transaction(() async {
      final debt = await (db.select(db.debtInstruments)..where((t) => t.id.equals(debtId))).getSingle();
      final newBalance = (debt.balance - amount).clamp(0, double.infinity);
      await db.update(db.debtInstruments).replace(debt.copyWith(balance: newBalance.toDouble()));
      await db.insertPayment(PaymentHistoriesCompanion.insert(
        dateOfPayment: DateTime.now(),
        instrumentName: debt.name,
        type: 'Debt',
        amountPaid: amount,
        notes: Value(note),
      ));
    });
  }

/// Next Steps:
/// - Return updated debt object from quickPay for immediate UI update.
/// - Add amortization calculator helper.
}
