// FILE: lib/services/db/app_database.dart
// Core Drift DB setup with typed tables and DAOs.
// Run build_runner to generate .g.dart files.

import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'app_database.g.dart';

/// Table definitions for the core models.
/// For brevity: define minimal tables. Expand columns as needed.

class IncomeExpenses extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get date => dateTime()();
  TextColumn get category => text()();
  TextColumn get description => text()();
  RealColumn get amount => real()();
  TextColumn get typeFixedOrVariable => text()();
  TextColumn get notes => text().nullable()();
  IntColumn get weekNum => integer()();
}

class DebtInstruments extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get balance => real()();
  RealColumn get emi => real()();
  RealColumn get minDue => real()();
  IntColumn get priority => integer().withDefault(const Constant(999))();
  IntColumn get pendingInstallments => integer().withDefault(const Constant(0))();
  TextColumn get notes => text().nullable()();
}

class CreditCards extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cardName => text()();
  RealColumn get limit => real()();
  RealColumn get utilization => real().withDefault(const Constant(0.0))();
  DateTimeColumn get lastUpdate => dateTime().withDefault(currentDateAndTime)();
}

class PaymentHistories extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get dateOfPayment => dateTime()();
  TextColumn get instrumentName => text()();
  TextColumn get type => text()();
  RealColumn get amountPaid => real()();
  TextColumn get notes => text().nullable()();
}

class WeeklyReviews extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get weekStart => dateTime()();
  TextColumn get metricsJson => text()(); // store JSON-encoded metrics map
  TextColumn get wins => text().nullable()();
  TextColumn get slipUps => text().nullable()();
  TextColumn get lessons => text().nullable()();
}

@DriftDatabase(
  tables: [IncomeExpenses, DebtInstruments, CreditCards, PaymentHistories, WeeklyReviews],
)
class AppDatabase extends _$AppDatabase {
  // we tell the database where to store the data with this constructor
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // CRUD helpers
  Future<int> insertIncomeExpense(IncomeExpensesCompanion entry) => into(incomeExpenses).insert(entry);
  Future<List<IncomeExpense>> getAllIncomeExpenses() => select(incomeExpenses).get();
  Future<bool> updateIncomeExpenseData(IncomeExpense entry) => update(incomeExpenses).replace(entry);
  Future<int> deleteIncomeExpenseById(int id) => (delete(incomeExpenses)..where((t) => t.id.equals(id))).go();

  // Debts
  Future<int> insertDebt(DebtInstrumentsCompanion entry) => into(debtInstruments).insert(entry);
  Future<List<DebtInstrument>> getAllDebts() => select(debtInstruments).get();
  Future<bool> updateDebtData(DebtInstrument entry) => update(debtInstruments).replace(entry);

  // Credit cards
  Future<int> insertCard(CreditCardsCompanion entry) => into(creditCards).insert(entry);
  Future<List<CreditCard>> getAllCards() => select(creditCards).get();
  Future<bool> updateCardData(CreditCard entry) => update(creditCards).replace(entry);

  // Payment History
  Future<int> insertPayment(PaymentHistoriesCompanion entry) => into(paymentHistories).insert(entry);
  Future<List<PaymentHistory>> getPayments({int limit = 100}) => (select(paymentHistories)..orderBy([(t) => OrderingTerm.desc(t.dateOfPayment)])..limit(limit)).get();

  // Weekly reviews
  Future<int> insertWeekly(WeeklyReviewsCompanion entry) => into(weeklyReviews).insert(entry);
  Future<List<WeeklyReview>> getWeeklyReviews() => select(weeklyReviews).get();
}

/// Opens connection to a local file using NativeDatabase.
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'money_mentor.sqlite'));
    return NativeDatabase(file);
  });
}

/// Next Steps:
/// - Add migrations in schemaVersion upgrades.
/// - Add indices for common queries (date, category).
/// - Add DAOs to separate concerns; include transactions for quick-pay flow.

