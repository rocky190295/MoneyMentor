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

  @override
  // TODO: implement amountPaid
  double get amountPaid => throw UnimplementedError();

  @override
  // TODO: implement dateOfPayment
  DateTime get dateOfPayment => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement instrumentName
  String get instrumentName => throw UnimplementedError();

  @override
  // TODO: implement notes
  String? get notes => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement type
  String get type => throw UnimplementedError();
}

/// Next Steps:
/// - Provide mapping to Drift table and add index on dateOfPayment for searches.
