// FILE: lib/models/credit_card.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

@freezed
class CreditCard with _$CreditCard {
  // NOTE: id is an int here to match the generated implementation.
  // Make sure this matches whatever your DB / generated files expect.
  const factory CreditCard({
    required String cardName,
    required int id,
    required DateTime lastUpdate,
    required double limit,
    required double utilization,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);

  @override
  // TODO: implement cardName
  String get cardName => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement lastUpdate
  DateTime get lastUpdate => throw UnimplementedError();

  @override
  // TODO: implement limit
  double get limit => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement utilization
  double get utilization => throw UnimplementedError();
}
