// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreditCard _$CreditCardFromJson(Map<String, dynamic> json) => _CreditCard(
  id: (json['id'] as num).toInt(),
  cardName: json['cardName'] as String,
  limit: (json['limit'] as num).toDouble(),
  utilization: (json['utilization'] as num).toDouble(),
  lastUpdate: DateTime.parse(json['lastUpdate'] as String),
);

Map<String, dynamic> _$CreditCardToJson(_CreditCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardName': instance.cardName,
      'limit': instance.limit,
      'utilization': instance.utilization,
      'lastUpdate': instance.lastUpdate.toIso8601String(),
    };
