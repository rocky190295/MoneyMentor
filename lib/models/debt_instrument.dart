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

  @override
  // TODO: implement balance
  double get balance => throw UnimplementedError();

  @override
  // TODO: implement emi
  double get emi => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement minDue
  double get minDue => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement notes
  String? get notes => throw UnimplementedError();

  @override
  // TODO: implement pendingInstallments
  int get pendingInstallments => throw UnimplementedError();

  @override
  // TODO: implement priority
  int get priority => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

/// Next Steps:
/// - Add method to compute payoff schedule (in future feature)
