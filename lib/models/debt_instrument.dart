// FILE: lib/models/debt_instrument.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debt_instrument.freezed.dart';
part 'debt_instrument.g.dart';

/// DebtInstrument model stores each debt (loan/EMI)
@freezed
class DebtInstrument with _$DebtInstrument {
  const factory DebtInstrument({
    required int id,
    required String name,
    required double balance,
    required double emi,
    required double minDue,
    required int priority, // lower number = higher priority
    required int pendingInstallments,
    String? notes,
  }) = _DebtInstrument;

  factory DebtInstrument.fromJson(Map<String, dynamic> json) => _$DebtInstrumentFromJson(json);
}

/// Next Steps:
/// - Add method to compute payoff schedule (in future feature)
