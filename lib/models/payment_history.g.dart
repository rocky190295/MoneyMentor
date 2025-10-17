// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentHistory _$PaymentHistoryFromJson(Map<String, dynamic> json) =>
    _PaymentHistory(
      id: (json['id'] as num).toInt(),
      dateOfPayment: DateTime.parse(json['dateOfPayment'] as String),
      instrumentName: json['instrumentName'] as String,
      type: json['type'] as String,
      amountPaid: (json['amountPaid'] as num).toDouble(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$PaymentHistoryToJson(_PaymentHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateOfPayment': instance.dateOfPayment.toIso8601String(),
      'instrumentName': instance.instrumentName,
      'type': instance.type,
      'amountPaid': instance.amountPaid,
      'notes': instance.notes,
    };
