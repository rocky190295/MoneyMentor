// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DebtInstrument _$DebtInstrumentFromJson(Map<String, dynamic> json) =>
    _DebtInstrument(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      balance: (json['balance'] as num).toDouble(),
      emi: (json['emi'] as num).toDouble(),
      minDue: (json['minDue'] as num).toDouble(),
      priority: (json['priority'] as num).toInt(),
      pendingInstallments: (json['pendingInstallments'] as num).toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$DebtInstrumentToJson(_DebtInstrument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'emi': instance.emi,
      'minDue': instance.minDue,
      'priority': instance.priority,
      'pendingInstallments': instance.pendingInstallments,
      'notes': instance.notes,
    };
