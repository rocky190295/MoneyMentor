// FILE: lib/models/credit_card.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

/// CreditCard model tracks limit and utilization
@freezed
class CreditCard with _$CreditCard {
  const factory CreditCard({
    required int id,
    required String cardName,
    required double limit,
    required double utilization, // current outstanding balance
    required DateTime lastUpdate,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) => _$CreditCardFromJson(json);
}

/// Next Steps:
/// - Add method to calculate utilizationPercentage
