// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $IncomeExpensesTable extends IncomeExpenses
    with TableInfo<$IncomeExpensesTable, IncomeExpense> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IncomeExpensesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
    'amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeFixedOrVariableMeta =
      const VerificationMeta('typeFixedOrVariable');
  @override
  late final GeneratedColumn<String> typeFixedOrVariable =
      GeneratedColumn<String>(
        'type_fixed_or_variable',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _weekNumMeta = const VerificationMeta(
    'weekNum',
  );
  @override
  late final GeneratedColumn<int> weekNum = GeneratedColumn<int>(
    'week_num',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    category,
    description,
    amount,
    typeFixedOrVariable,
    notes,
    weekNum,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'income_expenses';
  @override
  VerificationContext validateIntegrity(
    Insertable<IncomeExpense> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(
        _amountMeta,
        amount.isAcceptableOrUnknown(data['amount']!, _amountMeta),
      );
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('type_fixed_or_variable')) {
      context.handle(
        _typeFixedOrVariableMeta,
        typeFixedOrVariable.isAcceptableOrUnknown(
          data['type_fixed_or_variable']!,
          _typeFixedOrVariableMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_typeFixedOrVariableMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    if (data.containsKey('week_num')) {
      context.handle(
        _weekNumMeta,
        weekNum.isAcceptableOrUnknown(data['week_num']!, _weekNumMeta),
      );
    } else if (isInserting) {
      context.missing(_weekNumMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  IncomeExpense map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IncomeExpense(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      amount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount'],
      )!,
      typeFixedOrVariable: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type_fixed_or_variable'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
      weekNum: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}week_num'],
      )!,
    );
  }

  @override
  $IncomeExpensesTable createAlias(String alias) {
    return $IncomeExpensesTable(attachedDatabase, alias);
  }
}

class IncomeExpense extends DataClass implements Insertable<IncomeExpense> {
  final int id;
  final DateTime date;
  final String category;
  final String description;
  final double amount;
  final String typeFixedOrVariable;
  final String? notes;
  final int weekNum;
  const IncomeExpense({
    required this.id,
    required this.date,
    required this.category,
    required this.description,
    required this.amount,
    required this.typeFixedOrVariable,
    this.notes,
    required this.weekNum,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    map['category'] = Variable<String>(category);
    map['description'] = Variable<String>(description);
    map['amount'] = Variable<double>(amount);
    map['type_fixed_or_variable'] = Variable<String>(typeFixedOrVariable);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['week_num'] = Variable<int>(weekNum);
    return map;
  }

  IncomeExpensesCompanion toCompanion(bool nullToAbsent) {
    return IncomeExpensesCompanion(
      id: Value(id),
      date: Value(date),
      category: Value(category),
      description: Value(description),
      amount: Value(amount),
      typeFixedOrVariable: Value(typeFixedOrVariable),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
      weekNum: Value(weekNum),
    );
  }

  factory IncomeExpense.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IncomeExpense(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      category: serializer.fromJson<String>(json['category']),
      description: serializer.fromJson<String>(json['description']),
      amount: serializer.fromJson<double>(json['amount']),
      typeFixedOrVariable: serializer.fromJson<String>(
        json['typeFixedOrVariable'],
      ),
      notes: serializer.fromJson<String?>(json['notes']),
      weekNum: serializer.fromJson<int>(json['weekNum']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'category': serializer.toJson<String>(category),
      'description': serializer.toJson<String>(description),
      'amount': serializer.toJson<double>(amount),
      'typeFixedOrVariable': serializer.toJson<String>(typeFixedOrVariable),
      'notes': serializer.toJson<String?>(notes),
      'weekNum': serializer.toJson<int>(weekNum),
    };
  }

  IncomeExpense copyWith({
    int? id,
    DateTime? date,
    String? category,
    String? description,
    double? amount,
    String? typeFixedOrVariable,
    Value<String?> notes = const Value.absent(),
    int? weekNum,
  }) => IncomeExpense(
    id: id ?? this.id,
    date: date ?? this.date,
    category: category ?? this.category,
    description: description ?? this.description,
    amount: amount ?? this.amount,
    typeFixedOrVariable: typeFixedOrVariable ?? this.typeFixedOrVariable,
    notes: notes.present ? notes.value : this.notes,
    weekNum: weekNum ?? this.weekNum,
  );
  IncomeExpense copyWithCompanion(IncomeExpensesCompanion data) {
    return IncomeExpense(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      category: data.category.present ? data.category.value : this.category,
      description: data.description.present
          ? data.description.value
          : this.description,
      amount: data.amount.present ? data.amount.value : this.amount,
      typeFixedOrVariable: data.typeFixedOrVariable.present
          ? data.typeFixedOrVariable.value
          : this.typeFixedOrVariable,
      notes: data.notes.present ? data.notes.value : this.notes,
      weekNum: data.weekNum.present ? data.weekNum.value : this.weekNum,
    );
  }

  @override
  String toString() {
    return (StringBuffer('IncomeExpense(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('typeFixedOrVariable: $typeFixedOrVariable, ')
          ..write('notes: $notes, ')
          ..write('weekNum: $weekNum')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    date,
    category,
    description,
    amount,
    typeFixedOrVariable,
    notes,
    weekNum,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IncomeExpense &&
          other.id == this.id &&
          other.date == this.date &&
          other.category == this.category &&
          other.description == this.description &&
          other.amount == this.amount &&
          other.typeFixedOrVariable == this.typeFixedOrVariable &&
          other.notes == this.notes &&
          other.weekNum == this.weekNum);
}

class IncomeExpensesCompanion extends UpdateCompanion<IncomeExpense> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<String> category;
  final Value<String> description;
  final Value<double> amount;
  final Value<String> typeFixedOrVariable;
  final Value<String?> notes;
  final Value<int> weekNum;
  const IncomeExpensesCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.category = const Value.absent(),
    this.description = const Value.absent(),
    this.amount = const Value.absent(),
    this.typeFixedOrVariable = const Value.absent(),
    this.notes = const Value.absent(),
    this.weekNum = const Value.absent(),
  });
  IncomeExpensesCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
    required String category,
    required String description,
    required double amount,
    required String typeFixedOrVariable,
    this.notes = const Value.absent(),
    required int weekNum,
  }) : date = Value(date),
       category = Value(category),
       description = Value(description),
       amount = Value(amount),
       typeFixedOrVariable = Value(typeFixedOrVariable),
       weekNum = Value(weekNum);
  static Insertable<IncomeExpense> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
    Expression<String>? category,
    Expression<String>? description,
    Expression<double>? amount,
    Expression<String>? typeFixedOrVariable,
    Expression<String>? notes,
    Expression<int>? weekNum,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (amount != null) 'amount': amount,
      if (typeFixedOrVariable != null)
        'type_fixed_or_variable': typeFixedOrVariable,
      if (notes != null) 'notes': notes,
      if (weekNum != null) 'week_num': weekNum,
    });
  }

  IncomeExpensesCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? date,
    Value<String>? category,
    Value<String>? description,
    Value<double>? amount,
    Value<String>? typeFixedOrVariable,
    Value<String?>? notes,
    Value<int>? weekNum,
  }) {
    return IncomeExpensesCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      category: category ?? this.category,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      typeFixedOrVariable: typeFixedOrVariable ?? this.typeFixedOrVariable,
      notes: notes ?? this.notes,
      weekNum: weekNum ?? this.weekNum,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (typeFixedOrVariable.present) {
      map['type_fixed_or_variable'] = Variable<String>(
        typeFixedOrVariable.value,
      );
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (weekNum.present) {
      map['week_num'] = Variable<int>(weekNum.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IncomeExpensesCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('amount: $amount, ')
          ..write('typeFixedOrVariable: $typeFixedOrVariable, ')
          ..write('notes: $notes, ')
          ..write('weekNum: $weekNum')
          ..write(')'))
        .toString();
  }
}

class $DebtInstrumentsTable extends DebtInstruments
    with TableInfo<$DebtInstrumentsTable, DebtInstrument> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DebtInstrumentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _balanceMeta = const VerificationMeta(
    'balance',
  );
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
    'balance',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emiMeta = const VerificationMeta('emi');
  @override
  late final GeneratedColumn<double> emi = GeneratedColumn<double>(
    'emi',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minDueMeta = const VerificationMeta('minDue');
  @override
  late final GeneratedColumn<double> minDue = GeneratedColumn<double>(
    'min_due',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priorityMeta = const VerificationMeta(
    'priority',
  );
  @override
  late final GeneratedColumn<int> priority = GeneratedColumn<int>(
    'priority',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(999),
  );
  static const VerificationMeta _pendingInstallmentsMeta =
      const VerificationMeta('pendingInstallments');
  @override
  late final GeneratedColumn<int> pendingInstallments = GeneratedColumn<int>(
    'pending_installments',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    balance,
    emi,
    minDue,
    priority,
    pendingInstallments,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'debt_instruments';
  @override
  VerificationContext validateIntegrity(
    Insertable<DebtInstrument> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(
        _balanceMeta,
        balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta),
      );
    } else if (isInserting) {
      context.missing(_balanceMeta);
    }
    if (data.containsKey('emi')) {
      context.handle(
        _emiMeta,
        emi.isAcceptableOrUnknown(data['emi']!, _emiMeta),
      );
    } else if (isInserting) {
      context.missing(_emiMeta);
    }
    if (data.containsKey('min_due')) {
      context.handle(
        _minDueMeta,
        minDue.isAcceptableOrUnknown(data['min_due']!, _minDueMeta),
      );
    } else if (isInserting) {
      context.missing(_minDueMeta);
    }
    if (data.containsKey('priority')) {
      context.handle(
        _priorityMeta,
        priority.isAcceptableOrUnknown(data['priority']!, _priorityMeta),
      );
    }
    if (data.containsKey('pending_installments')) {
      context.handle(
        _pendingInstallmentsMeta,
        pendingInstallments.isAcceptableOrUnknown(
          data['pending_installments']!,
          _pendingInstallmentsMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DebtInstrument map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DebtInstrument(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      balance: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}balance'],
      )!,
      emi: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}emi'],
      )!,
      minDue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_due'],
      )!,
      priority: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}priority'],
      )!,
      pendingInstallments: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pending_installments'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $DebtInstrumentsTable createAlias(String alias) {
    return $DebtInstrumentsTable(attachedDatabase, alias);
  }
}

class DebtInstrument extends DataClass implements Insertable<DebtInstrument> {
  final int id;
  final String name;
  final double balance;
  final double emi;
  final double minDue;
  final int priority;
  final int pendingInstallments;
  final String? notes;
  const DebtInstrument({
    required this.id,
    required this.name,
    required this.balance,
    required this.emi,
    required this.minDue,
    required this.priority,
    required this.pendingInstallments,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['balance'] = Variable<double>(balance);
    map['emi'] = Variable<double>(emi);
    map['min_due'] = Variable<double>(minDue);
    map['priority'] = Variable<int>(priority);
    map['pending_installments'] = Variable<int>(pendingInstallments);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  DebtInstrumentsCompanion toCompanion(bool nullToAbsent) {
    return DebtInstrumentsCompanion(
      id: Value(id),
      name: Value(name),
      balance: Value(balance),
      emi: Value(emi),
      minDue: Value(minDue),
      priority: Value(priority),
      pendingInstallments: Value(pendingInstallments),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory DebtInstrument.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DebtInstrument(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      balance: serializer.fromJson<double>(json['balance']),
      emi: serializer.fromJson<double>(json['emi']),
      minDue: serializer.fromJson<double>(json['minDue']),
      priority: serializer.fromJson<int>(json['priority']),
      pendingInstallments: serializer.fromJson<int>(
        json['pendingInstallments'],
      ),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'balance': serializer.toJson<double>(balance),
      'emi': serializer.toJson<double>(emi),
      'minDue': serializer.toJson<double>(minDue),
      'priority': serializer.toJson<int>(priority),
      'pendingInstallments': serializer.toJson<int>(pendingInstallments),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  DebtInstrument copyWith({
    int? id,
    String? name,
    double? balance,
    double? emi,
    double? minDue,
    int? priority,
    int? pendingInstallments,
    Value<String?> notes = const Value.absent(),
  }) => DebtInstrument(
    id: id ?? this.id,
    name: name ?? this.name,
    balance: balance ?? this.balance,
    emi: emi ?? this.emi,
    minDue: minDue ?? this.minDue,
    priority: priority ?? this.priority,
    pendingInstallments: pendingInstallments ?? this.pendingInstallments,
    notes: notes.present ? notes.value : this.notes,
  );
  DebtInstrument copyWithCompanion(DebtInstrumentsCompanion data) {
    return DebtInstrument(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      balance: data.balance.present ? data.balance.value : this.balance,
      emi: data.emi.present ? data.emi.value : this.emi,
      minDue: data.minDue.present ? data.minDue.value : this.minDue,
      priority: data.priority.present ? data.priority.value : this.priority,
      pendingInstallments: data.pendingInstallments.present
          ? data.pendingInstallments.value
          : this.pendingInstallments,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DebtInstrument(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('balance: $balance, ')
          ..write('emi: $emi, ')
          ..write('minDue: $minDue, ')
          ..write('priority: $priority, ')
          ..write('pendingInstallments: $pendingInstallments, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    balance,
    emi,
    minDue,
    priority,
    pendingInstallments,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DebtInstrument &&
          other.id == this.id &&
          other.name == this.name &&
          other.balance == this.balance &&
          other.emi == this.emi &&
          other.minDue == this.minDue &&
          other.priority == this.priority &&
          other.pendingInstallments == this.pendingInstallments &&
          other.notes == this.notes);
}

class DebtInstrumentsCompanion extends UpdateCompanion<DebtInstrument> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> balance;
  final Value<double> emi;
  final Value<double> minDue;
  final Value<int> priority;
  final Value<int> pendingInstallments;
  final Value<String?> notes;
  const DebtInstrumentsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.balance = const Value.absent(),
    this.emi = const Value.absent(),
    this.minDue = const Value.absent(),
    this.priority = const Value.absent(),
    this.pendingInstallments = const Value.absent(),
    this.notes = const Value.absent(),
  });
  DebtInstrumentsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double balance,
    required double emi,
    required double minDue,
    this.priority = const Value.absent(),
    this.pendingInstallments = const Value.absent(),
    this.notes = const Value.absent(),
  }) : name = Value(name),
       balance = Value(balance),
       emi = Value(emi),
       minDue = Value(minDue);
  static Insertable<DebtInstrument> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? balance,
    Expression<double>? emi,
    Expression<double>? minDue,
    Expression<int>? priority,
    Expression<int>? pendingInstallments,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (balance != null) 'balance': balance,
      if (emi != null) 'emi': emi,
      if (minDue != null) 'min_due': minDue,
      if (priority != null) 'priority': priority,
      if (pendingInstallments != null)
        'pending_installments': pendingInstallments,
      if (notes != null) 'notes': notes,
    });
  }

  DebtInstrumentsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<double>? balance,
    Value<double>? emi,
    Value<double>? minDue,
    Value<int>? priority,
    Value<int>? pendingInstallments,
    Value<String?>? notes,
  }) {
    return DebtInstrumentsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      balance: balance ?? this.balance,
      emi: emi ?? this.emi,
      minDue: minDue ?? this.minDue,
      priority: priority ?? this.priority,
      pendingInstallments: pendingInstallments ?? this.pendingInstallments,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (emi.present) {
      map['emi'] = Variable<double>(emi.value);
    }
    if (minDue.present) {
      map['min_due'] = Variable<double>(minDue.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(priority.value);
    }
    if (pendingInstallments.present) {
      map['pending_installments'] = Variable<int>(pendingInstallments.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DebtInstrumentsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('balance: $balance, ')
          ..write('emi: $emi, ')
          ..write('minDue: $minDue, ')
          ..write('priority: $priority, ')
          ..write('pendingInstallments: $pendingInstallments, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $CreditCardsTable extends CreditCards
    with TableInfo<$CreditCardsTable, CreditCard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CreditCardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _cardNameMeta = const VerificationMeta(
    'cardName',
  );
  @override
  late final GeneratedColumn<String> cardName = GeneratedColumn<String>(
    'card_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _limitMeta = const VerificationMeta('limit');
  @override
  late final GeneratedColumn<double> limit = GeneratedColumn<double>(
    'limit',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _utilizationMeta = const VerificationMeta(
    'utilization',
  );
  @override
  late final GeneratedColumn<double> utilization = GeneratedColumn<double>(
    'utilization',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  static const VerificationMeta _lastUpdateMeta = const VerificationMeta(
    'lastUpdate',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdate = GeneratedColumn<DateTime>(
    'last_update',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    cardName,
    limit,
    utilization,
    lastUpdate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'credit_cards';
  @override
  VerificationContext validateIntegrity(
    Insertable<CreditCard> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('card_name')) {
      context.handle(
        _cardNameMeta,
        cardName.isAcceptableOrUnknown(data['card_name']!, _cardNameMeta),
      );
    } else if (isInserting) {
      context.missing(_cardNameMeta);
    }
    if (data.containsKey('limit')) {
      context.handle(
        _limitMeta,
        limit.isAcceptableOrUnknown(data['limit']!, _limitMeta),
      );
    } else if (isInserting) {
      context.missing(_limitMeta);
    }
    if (data.containsKey('utilization')) {
      context.handle(
        _utilizationMeta,
        utilization.isAcceptableOrUnknown(
          data['utilization']!,
          _utilizationMeta,
        ),
      );
    }
    if (data.containsKey('last_update')) {
      context.handle(
        _lastUpdateMeta,
        lastUpdate.isAcceptableOrUnknown(data['last_update']!, _lastUpdateMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CreditCard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CreditCard(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      cardName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_name'],
      )!,
      limit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}limit'],
      )!,
      utilization: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}utilization'],
      )!,
      lastUpdate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_update'],
      )!,
    );
  }

  @override
  $CreditCardsTable createAlias(String alias) {
    return $CreditCardsTable(attachedDatabase, alias);
  }
}

class CreditCard extends DataClass implements Insertable<CreditCard> {
  final int id;
  final String cardName;
  final double limit;
  final double utilization;
  final DateTime lastUpdate;
  const CreditCard({
    required this.id,
    required this.cardName,
    required this.limit,
    required this.utilization,
    required this.lastUpdate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['card_name'] = Variable<String>(cardName);
    map['limit'] = Variable<double>(limit);
    map['utilization'] = Variable<double>(utilization);
    map['last_update'] = Variable<DateTime>(lastUpdate);
    return map;
  }

  CreditCardsCompanion toCompanion(bool nullToAbsent) {
    return CreditCardsCompanion(
      id: Value(id),
      cardName: Value(cardName),
      limit: Value(limit),
      utilization: Value(utilization),
      lastUpdate: Value(lastUpdate),
    );
  }

  factory CreditCard.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CreditCard(
      id: serializer.fromJson<int>(json['id']),
      cardName: serializer.fromJson<String>(json['cardName']),
      limit: serializer.fromJson<double>(json['limit']),
      utilization: serializer.fromJson<double>(json['utilization']),
      lastUpdate: serializer.fromJson<DateTime>(json['lastUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cardName': serializer.toJson<String>(cardName),
      'limit': serializer.toJson<double>(limit),
      'utilization': serializer.toJson<double>(utilization),
      'lastUpdate': serializer.toJson<DateTime>(lastUpdate),
    };
  }

  CreditCard copyWith({
    int? id,
    String? cardName,
    double? limit,
    double? utilization,
    DateTime? lastUpdate,
  }) => CreditCard(
    id: id ?? this.id,
    cardName: cardName ?? this.cardName,
    limit: limit ?? this.limit,
    utilization: utilization ?? this.utilization,
    lastUpdate: lastUpdate ?? this.lastUpdate,
  );
  CreditCard copyWithCompanion(CreditCardsCompanion data) {
    return CreditCard(
      id: data.id.present ? data.id.value : this.id,
      cardName: data.cardName.present ? data.cardName.value : this.cardName,
      limit: data.limit.present ? data.limit.value : this.limit,
      utilization: data.utilization.present
          ? data.utilization.value
          : this.utilization,
      lastUpdate: data.lastUpdate.present
          ? data.lastUpdate.value
          : this.lastUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CreditCard(')
          ..write('id: $id, ')
          ..write('cardName: $cardName, ')
          ..write('limit: $limit, ')
          ..write('utilization: $utilization, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, cardName, limit, utilization, lastUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CreditCard &&
          other.id == this.id &&
          other.cardName == this.cardName &&
          other.limit == this.limit &&
          other.utilization == this.utilization &&
          other.lastUpdate == this.lastUpdate);
}

class CreditCardsCompanion extends UpdateCompanion<CreditCard> {
  final Value<int> id;
  final Value<String> cardName;
  final Value<double> limit;
  final Value<double> utilization;
  final Value<DateTime> lastUpdate;
  const CreditCardsCompanion({
    this.id = const Value.absent(),
    this.cardName = const Value.absent(),
    this.limit = const Value.absent(),
    this.utilization = const Value.absent(),
    this.lastUpdate = const Value.absent(),
  });
  CreditCardsCompanion.insert({
    this.id = const Value.absent(),
    required String cardName,
    required double limit,
    this.utilization = const Value.absent(),
    this.lastUpdate = const Value.absent(),
  }) : cardName = Value(cardName),
       limit = Value(limit);
  static Insertable<CreditCard> custom({
    Expression<int>? id,
    Expression<String>? cardName,
    Expression<double>? limit,
    Expression<double>? utilization,
    Expression<DateTime>? lastUpdate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cardName != null) 'card_name': cardName,
      if (limit != null) 'limit': limit,
      if (utilization != null) 'utilization': utilization,
      if (lastUpdate != null) 'last_update': lastUpdate,
    });
  }

  CreditCardsCompanion copyWith({
    Value<int>? id,
    Value<String>? cardName,
    Value<double>? limit,
    Value<double>? utilization,
    Value<DateTime>? lastUpdate,
  }) {
    return CreditCardsCompanion(
      id: id ?? this.id,
      cardName: cardName ?? this.cardName,
      limit: limit ?? this.limit,
      utilization: utilization ?? this.utilization,
      lastUpdate: lastUpdate ?? this.lastUpdate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cardName.present) {
      map['card_name'] = Variable<String>(cardName.value);
    }
    if (limit.present) {
      map['limit'] = Variable<double>(limit.value);
    }
    if (utilization.present) {
      map['utilization'] = Variable<double>(utilization.value);
    }
    if (lastUpdate.present) {
      map['last_update'] = Variable<DateTime>(lastUpdate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CreditCardsCompanion(')
          ..write('id: $id, ')
          ..write('cardName: $cardName, ')
          ..write('limit: $limit, ')
          ..write('utilization: $utilization, ')
          ..write('lastUpdate: $lastUpdate')
          ..write(')'))
        .toString();
  }
}

class $PaymentHistoriesTable extends PaymentHistories
    with TableInfo<$PaymentHistoriesTable, PaymentHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentHistoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateOfPaymentMeta = const VerificationMeta(
    'dateOfPayment',
  );
  @override
  late final GeneratedColumn<DateTime> dateOfPayment =
      GeneratedColumn<DateTime>(
        'date_of_payment',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _instrumentNameMeta = const VerificationMeta(
    'instrumentName',
  );
  @override
  late final GeneratedColumn<String> instrumentName = GeneratedColumn<String>(
    'instrument_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountPaidMeta = const VerificationMeta(
    'amountPaid',
  );
  @override
  late final GeneratedColumn<double> amountPaid = GeneratedColumn<double>(
    'amount_paid',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    dateOfPayment,
    instrumentName,
    type,
    amountPaid,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_histories';
  @override
  VerificationContext validateIntegrity(
    Insertable<PaymentHistory> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date_of_payment')) {
      context.handle(
        _dateOfPaymentMeta,
        dateOfPayment.isAcceptableOrUnknown(
          data['date_of_payment']!,
          _dateOfPaymentMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dateOfPaymentMeta);
    }
    if (data.containsKey('instrument_name')) {
      context.handle(
        _instrumentNameMeta,
        instrumentName.isAcceptableOrUnknown(
          data['instrument_name']!,
          _instrumentNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_instrumentNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('amount_paid')) {
      context.handle(
        _amountPaidMeta,
        amountPaid.isAcceptableOrUnknown(data['amount_paid']!, _amountPaidMeta),
      );
    } else if (isInserting) {
      context.missing(_amountPaidMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentHistory(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      dateOfPayment: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date_of_payment'],
      )!,
      instrumentName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instrument_name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      amountPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount_paid'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      ),
    );
  }

  @override
  $PaymentHistoriesTable createAlias(String alias) {
    return $PaymentHistoriesTable(attachedDatabase, alias);
  }
}

class PaymentHistory extends DataClass implements Insertable<PaymentHistory> {
  final int id;
  final DateTime dateOfPayment;
  final String instrumentName;
  final String type;
  final double amountPaid;
  final String? notes;
  const PaymentHistory({
    required this.id,
    required this.dateOfPayment,
    required this.instrumentName,
    required this.type,
    required this.amountPaid,
    this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date_of_payment'] = Variable<DateTime>(dateOfPayment);
    map['instrument_name'] = Variable<String>(instrumentName);
    map['type'] = Variable<String>(type);
    map['amount_paid'] = Variable<double>(amountPaid);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    return map;
  }

  PaymentHistoriesCompanion toCompanion(bool nullToAbsent) {
    return PaymentHistoriesCompanion(
      id: Value(id),
      dateOfPayment: Value(dateOfPayment),
      instrumentName: Value(instrumentName),
      type: Value(type),
      amountPaid: Value(amountPaid),
      notes: notes == null && nullToAbsent
          ? const Value.absent()
          : Value(notes),
    );
  }

  factory PaymentHistory.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentHistory(
      id: serializer.fromJson<int>(json['id']),
      dateOfPayment: serializer.fromJson<DateTime>(json['dateOfPayment']),
      instrumentName: serializer.fromJson<String>(json['instrumentName']),
      type: serializer.fromJson<String>(json['type']),
      amountPaid: serializer.fromJson<double>(json['amountPaid']),
      notes: serializer.fromJson<String?>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dateOfPayment': serializer.toJson<DateTime>(dateOfPayment),
      'instrumentName': serializer.toJson<String>(instrumentName),
      'type': serializer.toJson<String>(type),
      'amountPaid': serializer.toJson<double>(amountPaid),
      'notes': serializer.toJson<String?>(notes),
    };
  }

  PaymentHistory copyWith({
    int? id,
    DateTime? dateOfPayment,
    String? instrumentName,
    String? type,
    double? amountPaid,
    Value<String?> notes = const Value.absent(),
  }) => PaymentHistory(
    id: id ?? this.id,
    dateOfPayment: dateOfPayment ?? this.dateOfPayment,
    instrumentName: instrumentName ?? this.instrumentName,
    type: type ?? this.type,
    amountPaid: amountPaid ?? this.amountPaid,
    notes: notes.present ? notes.value : this.notes,
  );
  PaymentHistory copyWithCompanion(PaymentHistoriesCompanion data) {
    return PaymentHistory(
      id: data.id.present ? data.id.value : this.id,
      dateOfPayment: data.dateOfPayment.present
          ? data.dateOfPayment.value
          : this.dateOfPayment,
      instrumentName: data.instrumentName.present
          ? data.instrumentName.value
          : this.instrumentName,
      type: data.type.present ? data.type.value : this.type,
      amountPaid: data.amountPaid.present
          ? data.amountPaid.value
          : this.amountPaid,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentHistory(')
          ..write('id: $id, ')
          ..write('dateOfPayment: $dateOfPayment, ')
          ..write('instrumentName: $instrumentName, ')
          ..write('type: $type, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, dateOfPayment, instrumentName, type, amountPaid, notes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentHistory &&
          other.id == this.id &&
          other.dateOfPayment == this.dateOfPayment &&
          other.instrumentName == this.instrumentName &&
          other.type == this.type &&
          other.amountPaid == this.amountPaid &&
          other.notes == this.notes);
}

class PaymentHistoriesCompanion extends UpdateCompanion<PaymentHistory> {
  final Value<int> id;
  final Value<DateTime> dateOfPayment;
  final Value<String> instrumentName;
  final Value<String> type;
  final Value<double> amountPaid;
  final Value<String?> notes;
  const PaymentHistoriesCompanion({
    this.id = const Value.absent(),
    this.dateOfPayment = const Value.absent(),
    this.instrumentName = const Value.absent(),
    this.type = const Value.absent(),
    this.amountPaid = const Value.absent(),
    this.notes = const Value.absent(),
  });
  PaymentHistoriesCompanion.insert({
    this.id = const Value.absent(),
    required DateTime dateOfPayment,
    required String instrumentName,
    required String type,
    required double amountPaid,
    this.notes = const Value.absent(),
  }) : dateOfPayment = Value(dateOfPayment),
       instrumentName = Value(instrumentName),
       type = Value(type),
       amountPaid = Value(amountPaid);
  static Insertable<PaymentHistory> custom({
    Expression<int>? id,
    Expression<DateTime>? dateOfPayment,
    Expression<String>? instrumentName,
    Expression<String>? type,
    Expression<double>? amountPaid,
    Expression<String>? notes,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dateOfPayment != null) 'date_of_payment': dateOfPayment,
      if (instrumentName != null) 'instrument_name': instrumentName,
      if (type != null) 'type': type,
      if (amountPaid != null) 'amount_paid': amountPaid,
      if (notes != null) 'notes': notes,
    });
  }

  PaymentHistoriesCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? dateOfPayment,
    Value<String>? instrumentName,
    Value<String>? type,
    Value<double>? amountPaid,
    Value<String?>? notes,
  }) {
    return PaymentHistoriesCompanion(
      id: id ?? this.id,
      dateOfPayment: dateOfPayment ?? this.dateOfPayment,
      instrumentName: instrumentName ?? this.instrumentName,
      type: type ?? this.type,
      amountPaid: amountPaid ?? this.amountPaid,
      notes: notes ?? this.notes,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dateOfPayment.present) {
      map['date_of_payment'] = Variable<DateTime>(dateOfPayment.value);
    }
    if (instrumentName.present) {
      map['instrument_name'] = Variable<String>(instrumentName.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (amountPaid.present) {
      map['amount_paid'] = Variable<double>(amountPaid.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentHistoriesCompanion(')
          ..write('id: $id, ')
          ..write('dateOfPayment: $dateOfPayment, ')
          ..write('instrumentName: $instrumentName, ')
          ..write('type: $type, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }
}

class $WeeklyReviewsTable extends WeeklyReviews
    with TableInfo<$WeeklyReviewsTable, WeeklyReview> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeeklyReviewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _weekStartMeta = const VerificationMeta(
    'weekStart',
  );
  @override
  late final GeneratedColumn<DateTime> weekStart = GeneratedColumn<DateTime>(
    'week_start',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _metricsJsonMeta = const VerificationMeta(
    'metricsJson',
  );
  @override
  late final GeneratedColumn<String> metricsJson = GeneratedColumn<String>(
    'metrics_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _winsMeta = const VerificationMeta('wins');
  @override
  late final GeneratedColumn<String> wins = GeneratedColumn<String>(
    'wins',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _slipUpsMeta = const VerificationMeta(
    'slipUps',
  );
  @override
  late final GeneratedColumn<String> slipUps = GeneratedColumn<String>(
    'slip_ups',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _lessonsMeta = const VerificationMeta(
    'lessons',
  );
  @override
  late final GeneratedColumn<String> lessons = GeneratedColumn<String>(
    'lessons',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    weekStart,
    metricsJson,
    wins,
    slipUps,
    lessons,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'weekly_reviews';
  @override
  VerificationContext validateIntegrity(
    Insertable<WeeklyReview> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('week_start')) {
      context.handle(
        _weekStartMeta,
        weekStart.isAcceptableOrUnknown(data['week_start']!, _weekStartMeta),
      );
    } else if (isInserting) {
      context.missing(_weekStartMeta);
    }
    if (data.containsKey('metrics_json')) {
      context.handle(
        _metricsJsonMeta,
        metricsJson.isAcceptableOrUnknown(
          data['metrics_json']!,
          _metricsJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_metricsJsonMeta);
    }
    if (data.containsKey('wins')) {
      context.handle(
        _winsMeta,
        wins.isAcceptableOrUnknown(data['wins']!, _winsMeta),
      );
    }
    if (data.containsKey('slip_ups')) {
      context.handle(
        _slipUpsMeta,
        slipUps.isAcceptableOrUnknown(data['slip_ups']!, _slipUpsMeta),
      );
    }
    if (data.containsKey('lessons')) {
      context.handle(
        _lessonsMeta,
        lessons.isAcceptableOrUnknown(data['lessons']!, _lessonsMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WeeklyReview map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WeeklyReview(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      weekStart: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}week_start'],
      )!,
      metricsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}metrics_json'],
      )!,
      wins: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}wins'],
      ),
      slipUps: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}slip_ups'],
      ),
      lessons: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lessons'],
      ),
    );
  }

  @override
  $WeeklyReviewsTable createAlias(String alias) {
    return $WeeklyReviewsTable(attachedDatabase, alias);
  }
}

class WeeklyReview extends DataClass implements Insertable<WeeklyReview> {
  final int id;
  final DateTime weekStart;
  final String metricsJson;
  final String? wins;
  final String? slipUps;
  final String? lessons;
  const WeeklyReview({
    required this.id,
    required this.weekStart,
    required this.metricsJson,
    this.wins,
    this.slipUps,
    this.lessons,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['week_start'] = Variable<DateTime>(weekStart);
    map['metrics_json'] = Variable<String>(metricsJson);
    if (!nullToAbsent || wins != null) {
      map['wins'] = Variable<String>(wins);
    }
    if (!nullToAbsent || slipUps != null) {
      map['slip_ups'] = Variable<String>(slipUps);
    }
    if (!nullToAbsent || lessons != null) {
      map['lessons'] = Variable<String>(lessons);
    }
    return map;
  }

  WeeklyReviewsCompanion toCompanion(bool nullToAbsent) {
    return WeeklyReviewsCompanion(
      id: Value(id),
      weekStart: Value(weekStart),
      metricsJson: Value(metricsJson),
      wins: wins == null && nullToAbsent ? const Value.absent() : Value(wins),
      slipUps: slipUps == null && nullToAbsent
          ? const Value.absent()
          : Value(slipUps),
      lessons: lessons == null && nullToAbsent
          ? const Value.absent()
          : Value(lessons),
    );
  }

  factory WeeklyReview.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WeeklyReview(
      id: serializer.fromJson<int>(json['id']),
      weekStart: serializer.fromJson<DateTime>(json['weekStart']),
      metricsJson: serializer.fromJson<String>(json['metricsJson']),
      wins: serializer.fromJson<String?>(json['wins']),
      slipUps: serializer.fromJson<String?>(json['slipUps']),
      lessons: serializer.fromJson<String?>(json['lessons']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'weekStart': serializer.toJson<DateTime>(weekStart),
      'metricsJson': serializer.toJson<String>(metricsJson),
      'wins': serializer.toJson<String?>(wins),
      'slipUps': serializer.toJson<String?>(slipUps),
      'lessons': serializer.toJson<String?>(lessons),
    };
  }

  WeeklyReview copyWith({
    int? id,
    DateTime? weekStart,
    String? metricsJson,
    Value<String?> wins = const Value.absent(),
    Value<String?> slipUps = const Value.absent(),
    Value<String?> lessons = const Value.absent(),
  }) => WeeklyReview(
    id: id ?? this.id,
    weekStart: weekStart ?? this.weekStart,
    metricsJson: metricsJson ?? this.metricsJson,
    wins: wins.present ? wins.value : this.wins,
    slipUps: slipUps.present ? slipUps.value : this.slipUps,
    lessons: lessons.present ? lessons.value : this.lessons,
  );
  WeeklyReview copyWithCompanion(WeeklyReviewsCompanion data) {
    return WeeklyReview(
      id: data.id.present ? data.id.value : this.id,
      weekStart: data.weekStart.present ? data.weekStart.value : this.weekStart,
      metricsJson: data.metricsJson.present
          ? data.metricsJson.value
          : this.metricsJson,
      wins: data.wins.present ? data.wins.value : this.wins,
      slipUps: data.slipUps.present ? data.slipUps.value : this.slipUps,
      lessons: data.lessons.present ? data.lessons.value : this.lessons,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WeeklyReview(')
          ..write('id: $id, ')
          ..write('weekStart: $weekStart, ')
          ..write('metricsJson: $metricsJson, ')
          ..write('wins: $wins, ')
          ..write('slipUps: $slipUps, ')
          ..write('lessons: $lessons')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, weekStart, metricsJson, wins, slipUps, lessons);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeeklyReview &&
          other.id == this.id &&
          other.weekStart == this.weekStart &&
          other.metricsJson == this.metricsJson &&
          other.wins == this.wins &&
          other.slipUps == this.slipUps &&
          other.lessons == this.lessons);
}

class WeeklyReviewsCompanion extends UpdateCompanion<WeeklyReview> {
  final Value<int> id;
  final Value<DateTime> weekStart;
  final Value<String> metricsJson;
  final Value<String?> wins;
  final Value<String?> slipUps;
  final Value<String?> lessons;
  const WeeklyReviewsCompanion({
    this.id = const Value.absent(),
    this.weekStart = const Value.absent(),
    this.metricsJson = const Value.absent(),
    this.wins = const Value.absent(),
    this.slipUps = const Value.absent(),
    this.lessons = const Value.absent(),
  });
  WeeklyReviewsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime weekStart,
    required String metricsJson,
    this.wins = const Value.absent(),
    this.slipUps = const Value.absent(),
    this.lessons = const Value.absent(),
  }) : weekStart = Value(weekStart),
       metricsJson = Value(metricsJson);
  static Insertable<WeeklyReview> custom({
    Expression<int>? id,
    Expression<DateTime>? weekStart,
    Expression<String>? metricsJson,
    Expression<String>? wins,
    Expression<String>? slipUps,
    Expression<String>? lessons,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (weekStart != null) 'week_start': weekStart,
      if (metricsJson != null) 'metrics_json': metricsJson,
      if (wins != null) 'wins': wins,
      if (slipUps != null) 'slip_ups': slipUps,
      if (lessons != null) 'lessons': lessons,
    });
  }

  WeeklyReviewsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? weekStart,
    Value<String>? metricsJson,
    Value<String?>? wins,
    Value<String?>? slipUps,
    Value<String?>? lessons,
  }) {
    return WeeklyReviewsCompanion(
      id: id ?? this.id,
      weekStart: weekStart ?? this.weekStart,
      metricsJson: metricsJson ?? this.metricsJson,
      wins: wins ?? this.wins,
      slipUps: slipUps ?? this.slipUps,
      lessons: lessons ?? this.lessons,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (weekStart.present) {
      map['week_start'] = Variable<DateTime>(weekStart.value);
    }
    if (metricsJson.present) {
      map['metrics_json'] = Variable<String>(metricsJson.value);
    }
    if (wins.present) {
      map['wins'] = Variable<String>(wins.value);
    }
    if (slipUps.present) {
      map['slip_ups'] = Variable<String>(slipUps.value);
    }
    if (lessons.present) {
      map['lessons'] = Variable<String>(lessons.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeeklyReviewsCompanion(')
          ..write('id: $id, ')
          ..write('weekStart: $weekStart, ')
          ..write('metricsJson: $metricsJson, ')
          ..write('wins: $wins, ')
          ..write('slipUps: $slipUps, ')
          ..write('lessons: $lessons')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $IncomeExpensesTable incomeExpenses = $IncomeExpensesTable(this);
  late final $DebtInstrumentsTable debtInstruments = $DebtInstrumentsTable(
    this,
  );
  late final $CreditCardsTable creditCards = $CreditCardsTable(this);
  late final $PaymentHistoriesTable paymentHistories = $PaymentHistoriesTable(
    this,
  );
  late final $WeeklyReviewsTable weeklyReviews = $WeeklyReviewsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    incomeExpenses,
    debtInstruments,
    creditCards,
    paymentHistories,
    weeklyReviews,
  ];
}

typedef $$IncomeExpensesTableCreateCompanionBuilder =
    IncomeExpensesCompanion Function({
      Value<int> id,
      required DateTime date,
      required String category,
      required String description,
      required double amount,
      required String typeFixedOrVariable,
      Value<String?> notes,
      required int weekNum,
    });
typedef $$IncomeExpensesTableUpdateCompanionBuilder =
    IncomeExpensesCompanion Function({
      Value<int> id,
      Value<DateTime> date,
      Value<String> category,
      Value<String> description,
      Value<double> amount,
      Value<String> typeFixedOrVariable,
      Value<String?> notes,
      Value<int> weekNum,
    });

class $$IncomeExpensesTableFilterComposer
    extends Composer<_$AppDatabase, $IncomeExpensesTable> {
  $$IncomeExpensesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get typeFixedOrVariable => $composableBuilder(
    column: $table.typeFixedOrVariable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weekNum => $composableBuilder(
    column: $table.weekNum,
    builder: (column) => ColumnFilters(column),
  );
}

class $$IncomeExpensesTableOrderingComposer
    extends Composer<_$AppDatabase, $IncomeExpensesTable> {
  $$IncomeExpensesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amount => $composableBuilder(
    column: $table.amount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get typeFixedOrVariable => $composableBuilder(
    column: $table.typeFixedOrVariable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weekNum => $composableBuilder(
    column: $table.weekNum,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$IncomeExpensesTableAnnotationComposer
    extends Composer<_$AppDatabase, $IncomeExpensesTable> {
  $$IncomeExpensesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get typeFixedOrVariable => $composableBuilder(
    column: $table.typeFixedOrVariable,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<int> get weekNum =>
      $composableBuilder(column: $table.weekNum, builder: (column) => column);
}

class $$IncomeExpensesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $IncomeExpensesTable,
          IncomeExpense,
          $$IncomeExpensesTableFilterComposer,
          $$IncomeExpensesTableOrderingComposer,
          $$IncomeExpensesTableAnnotationComposer,
          $$IncomeExpensesTableCreateCompanionBuilder,
          $$IncomeExpensesTableUpdateCompanionBuilder,
          (
            IncomeExpense,
            BaseReferences<_$AppDatabase, $IncomeExpensesTable, IncomeExpense>,
          ),
          IncomeExpense,
          PrefetchHooks Function()
        > {
  $$IncomeExpensesTableTableManager(
    _$AppDatabase db,
    $IncomeExpensesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$IncomeExpensesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$IncomeExpensesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$IncomeExpensesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<double> amount = const Value.absent(),
                Value<String> typeFixedOrVariable = const Value.absent(),
                Value<String?> notes = const Value.absent(),
                Value<int> weekNum = const Value.absent(),
              }) => IncomeExpensesCompanion(
                id: id,
                date: date,
                category: category,
                description: description,
                amount: amount,
                typeFixedOrVariable: typeFixedOrVariable,
                notes: notes,
                weekNum: weekNum,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime date,
                required String category,
                required String description,
                required double amount,
                required String typeFixedOrVariable,
                Value<String?> notes = const Value.absent(),
                required int weekNum,
              }) => IncomeExpensesCompanion.insert(
                id: id,
                date: date,
                category: category,
                description: description,
                amount: amount,
                typeFixedOrVariable: typeFixedOrVariable,
                notes: notes,
                weekNum: weekNum,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$IncomeExpensesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $IncomeExpensesTable,
      IncomeExpense,
      $$IncomeExpensesTableFilterComposer,
      $$IncomeExpensesTableOrderingComposer,
      $$IncomeExpensesTableAnnotationComposer,
      $$IncomeExpensesTableCreateCompanionBuilder,
      $$IncomeExpensesTableUpdateCompanionBuilder,
      (
        IncomeExpense,
        BaseReferences<_$AppDatabase, $IncomeExpensesTable, IncomeExpense>,
      ),
      IncomeExpense,
      PrefetchHooks Function()
    >;
typedef $$DebtInstrumentsTableCreateCompanionBuilder =
    DebtInstrumentsCompanion Function({
      Value<int> id,
      required String name,
      required double balance,
      required double emi,
      required double minDue,
      Value<int> priority,
      Value<int> pendingInstallments,
      Value<String?> notes,
    });
typedef $$DebtInstrumentsTableUpdateCompanionBuilder =
    DebtInstrumentsCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<double> balance,
      Value<double> emi,
      Value<double> minDue,
      Value<int> priority,
      Value<int> pendingInstallments,
      Value<String?> notes,
    });

class $$DebtInstrumentsTableFilterComposer
    extends Composer<_$AppDatabase, $DebtInstrumentsTable> {
  $$DebtInstrumentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get emi => $composableBuilder(
    column: $table.emi,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minDue => $composableBuilder(
    column: $table.minDue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pendingInstallments => $composableBuilder(
    column: $table.pendingInstallments,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DebtInstrumentsTableOrderingComposer
    extends Composer<_$AppDatabase, $DebtInstrumentsTable> {
  $$DebtInstrumentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get balance => $composableBuilder(
    column: $table.balance,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get emi => $composableBuilder(
    column: $table.emi,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minDue => $composableBuilder(
    column: $table.minDue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get priority => $composableBuilder(
    column: $table.priority,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pendingInstallments => $composableBuilder(
    column: $table.pendingInstallments,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DebtInstrumentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DebtInstrumentsTable> {
  $$DebtInstrumentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<double> get emi =>
      $composableBuilder(column: $table.emi, builder: (column) => column);

  GeneratedColumn<double> get minDue =>
      $composableBuilder(column: $table.minDue, builder: (column) => column);

  GeneratedColumn<int> get priority =>
      $composableBuilder(column: $table.priority, builder: (column) => column);

  GeneratedColumn<int> get pendingInstallments => $composableBuilder(
    column: $table.pendingInstallments,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$DebtInstrumentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DebtInstrumentsTable,
          DebtInstrument,
          $$DebtInstrumentsTableFilterComposer,
          $$DebtInstrumentsTableOrderingComposer,
          $$DebtInstrumentsTableAnnotationComposer,
          $$DebtInstrumentsTableCreateCompanionBuilder,
          $$DebtInstrumentsTableUpdateCompanionBuilder,
          (
            DebtInstrument,
            BaseReferences<
              _$AppDatabase,
              $DebtInstrumentsTable,
              DebtInstrument
            >,
          ),
          DebtInstrument,
          PrefetchHooks Function()
        > {
  $$DebtInstrumentsTableTableManager(
    _$AppDatabase db,
    $DebtInstrumentsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DebtInstrumentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DebtInstrumentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DebtInstrumentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> balance = const Value.absent(),
                Value<double> emi = const Value.absent(),
                Value<double> minDue = const Value.absent(),
                Value<int> priority = const Value.absent(),
                Value<int> pendingInstallments = const Value.absent(),
                Value<String?> notes = const Value.absent(),
              }) => DebtInstrumentsCompanion(
                id: id,
                name: name,
                balance: balance,
                emi: emi,
                minDue: minDue,
                priority: priority,
                pendingInstallments: pendingInstallments,
                notes: notes,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required double balance,
                required double emi,
                required double minDue,
                Value<int> priority = const Value.absent(),
                Value<int> pendingInstallments = const Value.absent(),
                Value<String?> notes = const Value.absent(),
              }) => DebtInstrumentsCompanion.insert(
                id: id,
                name: name,
                balance: balance,
                emi: emi,
                minDue: minDue,
                priority: priority,
                pendingInstallments: pendingInstallments,
                notes: notes,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DebtInstrumentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DebtInstrumentsTable,
      DebtInstrument,
      $$DebtInstrumentsTableFilterComposer,
      $$DebtInstrumentsTableOrderingComposer,
      $$DebtInstrumentsTableAnnotationComposer,
      $$DebtInstrumentsTableCreateCompanionBuilder,
      $$DebtInstrumentsTableUpdateCompanionBuilder,
      (
        DebtInstrument,
        BaseReferences<_$AppDatabase, $DebtInstrumentsTable, DebtInstrument>,
      ),
      DebtInstrument,
      PrefetchHooks Function()
    >;
typedef $$CreditCardsTableCreateCompanionBuilder =
    CreditCardsCompanion Function({
      Value<int> id,
      required String cardName,
      required double limit,
      Value<double> utilization,
      Value<DateTime> lastUpdate,
    });
typedef $$CreditCardsTableUpdateCompanionBuilder =
    CreditCardsCompanion Function({
      Value<int> id,
      Value<String> cardName,
      Value<double> limit,
      Value<double> utilization,
      Value<DateTime> lastUpdate,
    });

class $$CreditCardsTableFilterComposer
    extends Composer<_$AppDatabase, $CreditCardsTable> {
  $$CreditCardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardName => $composableBuilder(
    column: $table.cardName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get limit => $composableBuilder(
    column: $table.limit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get utilization => $composableBuilder(
    column: $table.utilization,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdate => $composableBuilder(
    column: $table.lastUpdate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CreditCardsTableOrderingComposer
    extends Composer<_$AppDatabase, $CreditCardsTable> {
  $$CreditCardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardName => $composableBuilder(
    column: $table.cardName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get limit => $composableBuilder(
    column: $table.limit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get utilization => $composableBuilder(
    column: $table.utilization,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdate => $composableBuilder(
    column: $table.lastUpdate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CreditCardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CreditCardsTable> {
  $$CreditCardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get cardName =>
      $composableBuilder(column: $table.cardName, builder: (column) => column);

  GeneratedColumn<double> get limit =>
      $composableBuilder(column: $table.limit, builder: (column) => column);

  GeneratedColumn<double> get utilization => $composableBuilder(
    column: $table.utilization,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastUpdate => $composableBuilder(
    column: $table.lastUpdate,
    builder: (column) => column,
  );
}

class $$CreditCardsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CreditCardsTable,
          CreditCard,
          $$CreditCardsTableFilterComposer,
          $$CreditCardsTableOrderingComposer,
          $$CreditCardsTableAnnotationComposer,
          $$CreditCardsTableCreateCompanionBuilder,
          $$CreditCardsTableUpdateCompanionBuilder,
          (
            CreditCard,
            BaseReferences<_$AppDatabase, $CreditCardsTable, CreditCard>,
          ),
          CreditCard,
          PrefetchHooks Function()
        > {
  $$CreditCardsTableTableManager(_$AppDatabase db, $CreditCardsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CreditCardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CreditCardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CreditCardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> cardName = const Value.absent(),
                Value<double> limit = const Value.absent(),
                Value<double> utilization = const Value.absent(),
                Value<DateTime> lastUpdate = const Value.absent(),
              }) => CreditCardsCompanion(
                id: id,
                cardName: cardName,
                limit: limit,
                utilization: utilization,
                lastUpdate: lastUpdate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String cardName,
                required double limit,
                Value<double> utilization = const Value.absent(),
                Value<DateTime> lastUpdate = const Value.absent(),
              }) => CreditCardsCompanion.insert(
                id: id,
                cardName: cardName,
                limit: limit,
                utilization: utilization,
                lastUpdate: lastUpdate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CreditCardsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CreditCardsTable,
      CreditCard,
      $$CreditCardsTableFilterComposer,
      $$CreditCardsTableOrderingComposer,
      $$CreditCardsTableAnnotationComposer,
      $$CreditCardsTableCreateCompanionBuilder,
      $$CreditCardsTableUpdateCompanionBuilder,
      (
        CreditCard,
        BaseReferences<_$AppDatabase, $CreditCardsTable, CreditCard>,
      ),
      CreditCard,
      PrefetchHooks Function()
    >;
typedef $$PaymentHistoriesTableCreateCompanionBuilder =
    PaymentHistoriesCompanion Function({
      Value<int> id,
      required DateTime dateOfPayment,
      required String instrumentName,
      required String type,
      required double amountPaid,
      Value<String?> notes,
    });
typedef $$PaymentHistoriesTableUpdateCompanionBuilder =
    PaymentHistoriesCompanion Function({
      Value<int> id,
      Value<DateTime> dateOfPayment,
      Value<String> instrumentName,
      Value<String> type,
      Value<double> amountPaid,
      Value<String?> notes,
    });

class $$PaymentHistoriesTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentHistoriesTable> {
  $$PaymentHistoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dateOfPayment => $composableBuilder(
    column: $table.dateOfPayment,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instrumentName => $composableBuilder(
    column: $table.instrumentName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PaymentHistoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentHistoriesTable> {
  $$PaymentHistoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dateOfPayment => $composableBuilder(
    column: $table.dateOfPayment,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instrumentName => $composableBuilder(
    column: $table.instrumentName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PaymentHistoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentHistoriesTable> {
  $$PaymentHistoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get dateOfPayment => $composableBuilder(
    column: $table.dateOfPayment,
    builder: (column) => column,
  );

  GeneratedColumn<String> get instrumentName => $composableBuilder(
    column: $table.instrumentName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$PaymentHistoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PaymentHistoriesTable,
          PaymentHistory,
          $$PaymentHistoriesTableFilterComposer,
          $$PaymentHistoriesTableOrderingComposer,
          $$PaymentHistoriesTableAnnotationComposer,
          $$PaymentHistoriesTableCreateCompanionBuilder,
          $$PaymentHistoriesTableUpdateCompanionBuilder,
          (
            PaymentHistory,
            BaseReferences<
              _$AppDatabase,
              $PaymentHistoriesTable,
              PaymentHistory
            >,
          ),
          PaymentHistory,
          PrefetchHooks Function()
        > {
  $$PaymentHistoriesTableTableManager(
    _$AppDatabase db,
    $PaymentHistoriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentHistoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentHistoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentHistoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> dateOfPayment = const Value.absent(),
                Value<String> instrumentName = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<double> amountPaid = const Value.absent(),
                Value<String?> notes = const Value.absent(),
              }) => PaymentHistoriesCompanion(
                id: id,
                dateOfPayment: dateOfPayment,
                instrumentName: instrumentName,
                type: type,
                amountPaid: amountPaid,
                notes: notes,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime dateOfPayment,
                required String instrumentName,
                required String type,
                required double amountPaid,
                Value<String?> notes = const Value.absent(),
              }) => PaymentHistoriesCompanion.insert(
                id: id,
                dateOfPayment: dateOfPayment,
                instrumentName: instrumentName,
                type: type,
                amountPaid: amountPaid,
                notes: notes,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PaymentHistoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PaymentHistoriesTable,
      PaymentHistory,
      $$PaymentHistoriesTableFilterComposer,
      $$PaymentHistoriesTableOrderingComposer,
      $$PaymentHistoriesTableAnnotationComposer,
      $$PaymentHistoriesTableCreateCompanionBuilder,
      $$PaymentHistoriesTableUpdateCompanionBuilder,
      (
        PaymentHistory,
        BaseReferences<_$AppDatabase, $PaymentHistoriesTable, PaymentHistory>,
      ),
      PaymentHistory,
      PrefetchHooks Function()
    >;
typedef $$WeeklyReviewsTableCreateCompanionBuilder =
    WeeklyReviewsCompanion Function({
      Value<int> id,
      required DateTime weekStart,
      required String metricsJson,
      Value<String?> wins,
      Value<String?> slipUps,
      Value<String?> lessons,
    });
typedef $$WeeklyReviewsTableUpdateCompanionBuilder =
    WeeklyReviewsCompanion Function({
      Value<int> id,
      Value<DateTime> weekStart,
      Value<String> metricsJson,
      Value<String?> wins,
      Value<String?> slipUps,
      Value<String?> lessons,
    });

class $$WeeklyReviewsTableFilterComposer
    extends Composer<_$AppDatabase, $WeeklyReviewsTable> {
  $$WeeklyReviewsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metricsJson => $composableBuilder(
    column: $table.metricsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get wins => $composableBuilder(
    column: $table.wins,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get slipUps => $composableBuilder(
    column: $table.slipUps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lessons => $composableBuilder(
    column: $table.lessons,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WeeklyReviewsTableOrderingComposer
    extends Composer<_$AppDatabase, $WeeklyReviewsTable> {
  $$WeeklyReviewsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get weekStart => $composableBuilder(
    column: $table.weekStart,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metricsJson => $composableBuilder(
    column: $table.metricsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get wins => $composableBuilder(
    column: $table.wins,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get slipUps => $composableBuilder(
    column: $table.slipUps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lessons => $composableBuilder(
    column: $table.lessons,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WeeklyReviewsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WeeklyReviewsTable> {
  $$WeeklyReviewsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get weekStart =>
      $composableBuilder(column: $table.weekStart, builder: (column) => column);

  GeneratedColumn<String> get metricsJson => $composableBuilder(
    column: $table.metricsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get wins =>
      $composableBuilder(column: $table.wins, builder: (column) => column);

  GeneratedColumn<String> get slipUps =>
      $composableBuilder(column: $table.slipUps, builder: (column) => column);

  GeneratedColumn<String> get lessons =>
      $composableBuilder(column: $table.lessons, builder: (column) => column);
}

class $$WeeklyReviewsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WeeklyReviewsTable,
          WeeklyReview,
          $$WeeklyReviewsTableFilterComposer,
          $$WeeklyReviewsTableOrderingComposer,
          $$WeeklyReviewsTableAnnotationComposer,
          $$WeeklyReviewsTableCreateCompanionBuilder,
          $$WeeklyReviewsTableUpdateCompanionBuilder,
          (
            WeeklyReview,
            BaseReferences<_$AppDatabase, $WeeklyReviewsTable, WeeklyReview>,
          ),
          WeeklyReview,
          PrefetchHooks Function()
        > {
  $$WeeklyReviewsTableTableManager(_$AppDatabase db, $WeeklyReviewsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WeeklyReviewsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WeeklyReviewsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WeeklyReviewsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> weekStart = const Value.absent(),
                Value<String> metricsJson = const Value.absent(),
                Value<String?> wins = const Value.absent(),
                Value<String?> slipUps = const Value.absent(),
                Value<String?> lessons = const Value.absent(),
              }) => WeeklyReviewsCompanion(
                id: id,
                weekStart: weekStart,
                metricsJson: metricsJson,
                wins: wins,
                slipUps: slipUps,
                lessons: lessons,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime weekStart,
                required String metricsJson,
                Value<String?> wins = const Value.absent(),
                Value<String?> slipUps = const Value.absent(),
                Value<String?> lessons = const Value.absent(),
              }) => WeeklyReviewsCompanion.insert(
                id: id,
                weekStart: weekStart,
                metricsJson: metricsJson,
                wins: wins,
                slipUps: slipUps,
                lessons: lessons,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WeeklyReviewsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WeeklyReviewsTable,
      WeeklyReview,
      $$WeeklyReviewsTableFilterComposer,
      $$WeeklyReviewsTableOrderingComposer,
      $$WeeklyReviewsTableAnnotationComposer,
      $$WeeklyReviewsTableCreateCompanionBuilder,
      $$WeeklyReviewsTableUpdateCompanionBuilder,
      (
        WeeklyReview,
        BaseReferences<_$AppDatabase, $WeeklyReviewsTable, WeeklyReview>,
      ),
      WeeklyReview,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$IncomeExpensesTableTableManager get incomeExpenses =>
      $$IncomeExpensesTableTableManager(_db, _db.incomeExpenses);
  $$DebtInstrumentsTableTableManager get debtInstruments =>
      $$DebtInstrumentsTableTableManager(_db, _db.debtInstruments);
  $$CreditCardsTableTableManager get creditCards =>
      $$CreditCardsTableTableManager(_db, _db.creditCards);
  $$PaymentHistoriesTableTableManager get paymentHistories =>
      $$PaymentHistoriesTableTableManager(_db, _db.paymentHistories);
  $$WeeklyReviewsTableTableManager get weeklyReviews =>
      $$WeeklyReviewsTableTableManager(_db, _db.weeklyReviews);
}
