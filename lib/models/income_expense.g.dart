// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IncomeExpense _$IncomeExpenseFromJson(Map<String, dynamic> json) =>
    _IncomeExpense(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      category: json['category'] as String,
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      typeFixedOrVariable: json['typeFixedOrVariable'] as String,
      notes: json['notes'] as String?,
      weekNum: (json['weekNum'] as num).toInt(),
    );

Map<String, dynamic> _$IncomeExpenseToJson(_IncomeExpense instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'category': instance.category,
      'description': instance.description,
      'amount': instance.amount,
      'typeFixedOrVariable': instance.typeFixedOrVariable,
      'notes': instance.notes,
      'weekNum': instance.weekNum,
    };
