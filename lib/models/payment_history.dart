// FILE: lib/models/payment_history.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_history.freezed.dart';
part 'payment_history.g.dart';

/// PaymentHistory model logs payments made to debts/credit-cards
@freezed
class PaymentHistory with _$PaymentHistory {
  const factory PaymentHistory({
    required int id,
    required DateTime dateOfPayment,
    required String instrumentName,
    required String type, // e.g., 'Debt', 'CreditCard', 'Expense'
    required double amountPaid,
    String? notes,
  }) = _PaymentHistory;

  factory PaymentHistory.fromJson(Map<String, dynamic> json) => _$PaymentHistoryFromJson(json);
}

/// Next Steps:
/// - Provide mapping to Drift table and add index on dateOfPayment for searches.
