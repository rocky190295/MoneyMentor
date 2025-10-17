// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IncomeExpense {

 int get id; DateTime get date; String get category; String get description; double get amount; String get typeFixedOrVariable; String? get notes; int get weekNum;
/// Create a copy of IncomeExpense
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncomeExpenseCopyWith<IncomeExpense> get copyWith => _$IncomeExpenseCopyWithImpl<IncomeExpense>(this as IncomeExpense, _$identity);

  /// Serializes this IncomeExpense to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncomeExpense&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.typeFixedOrVariable, typeFixedOrVariable) || other.typeFixedOrVariable == typeFixedOrVariable)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.weekNum, weekNum) || other.weekNum == weekNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,category,description,amount,typeFixedOrVariable,notes,weekNum);

@override
String toString() {
  return 'IncomeExpense(id: $id, date: $date, category: $category, description: $description, amount: $amount, typeFixedOrVariable: $typeFixedOrVariable, notes: $notes, weekNum: $weekNum)';
}


}

/// @nodoc
abstract mixin class $IncomeExpenseCopyWith<$Res>  {
  factory $IncomeExpenseCopyWith(IncomeExpense value, $Res Function(IncomeExpense) _then) = _$IncomeExpenseCopyWithImpl;
@useResult
$Res call({
 int id, DateTime date, String category, String description, double amount, String typeFixedOrVariable, String? notes, int weekNum
});




}
/// @nodoc
class _$IncomeExpenseCopyWithImpl<$Res>
    implements $IncomeExpenseCopyWith<$Res> {
  _$IncomeExpenseCopyWithImpl(this._self, this._then);

  final IncomeExpense _self;
  final $Res Function(IncomeExpense) _then;

/// Create a copy of IncomeExpense
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? category = null,Object? description = null,Object? amount = null,Object? typeFixedOrVariable = null,Object? notes = freezed,Object? weekNum = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,typeFixedOrVariable: null == typeFixedOrVariable ? _self.typeFixedOrVariable : typeFixedOrVariable // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,weekNum: null == weekNum ? _self.weekNum : weekNum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [IncomeExpense].
extension IncomeExpensePatterns on IncomeExpense {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IncomeExpense value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IncomeExpense() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IncomeExpense value)  $default,){
final _that = this;
switch (_that) {
case _IncomeExpense():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IncomeExpense value)?  $default,){
final _that = this;
switch (_that) {
case _IncomeExpense() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime date,  String category,  String description,  double amount,  String typeFixedOrVariable,  String? notes,  int weekNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IncomeExpense() when $default != null:
return $default(_that.id,_that.date,_that.category,_that.description,_that.amount,_that.typeFixedOrVariable,_that.notes,_that.weekNum);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime date,  String category,  String description,  double amount,  String typeFixedOrVariable,  String? notes,  int weekNum)  $default,) {final _that = this;
switch (_that) {
case _IncomeExpense():
return $default(_that.id,_that.date,_that.category,_that.description,_that.amount,_that.typeFixedOrVariable,_that.notes,_that.weekNum);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime date,  String category,  String description,  double amount,  String typeFixedOrVariable,  String? notes,  int weekNum)?  $default,) {final _that = this;
switch (_that) {
case _IncomeExpense() when $default != null:
return $default(_that.id,_that.date,_that.category,_that.description,_that.amount,_that.typeFixedOrVariable,_that.notes,_that.weekNum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IncomeExpense implements IncomeExpense {
  const _IncomeExpense({required this.id, required this.date, required this.category, required this.description, required this.amount, required this.typeFixedOrVariable, this.notes, required this.weekNum});
  factory _IncomeExpense.fromJson(Map<String, dynamic> json) => _$IncomeExpenseFromJson(json);

@override final  int id;
@override final  DateTime date;
@override final  String category;
@override final  String description;
@override final  double amount;
@override final  String typeFixedOrVariable;
@override final  String? notes;
@override final  int weekNum;

/// Create a copy of IncomeExpense
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IncomeExpenseCopyWith<_IncomeExpense> get copyWith => __$IncomeExpenseCopyWithImpl<_IncomeExpense>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IncomeExpenseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IncomeExpense&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.category, category) || other.category == category)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.typeFixedOrVariable, typeFixedOrVariable) || other.typeFixedOrVariable == typeFixedOrVariable)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.weekNum, weekNum) || other.weekNum == weekNum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,category,description,amount,typeFixedOrVariable,notes,weekNum);

@override
String toString() {
  return 'IncomeExpense(id: $id, date: $date, category: $category, description: $description, amount: $amount, typeFixedOrVariable: $typeFixedOrVariable, notes: $notes, weekNum: $weekNum)';
}


}

/// @nodoc
abstract mixin class _$IncomeExpenseCopyWith<$Res> implements $IncomeExpenseCopyWith<$Res> {
  factory _$IncomeExpenseCopyWith(_IncomeExpense value, $Res Function(_IncomeExpense) _then) = __$IncomeExpenseCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime date, String category, String description, double amount, String typeFixedOrVariable, String? notes, int weekNum
});




}
/// @nodoc
class __$IncomeExpenseCopyWithImpl<$Res>
    implements _$IncomeExpenseCopyWith<$Res> {
  __$IncomeExpenseCopyWithImpl(this._self, this._then);

  final _IncomeExpense _self;
  final $Res Function(_IncomeExpense) _then;

/// Create a copy of IncomeExpense
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? category = null,Object? description = null,Object? amount = null,Object? typeFixedOrVariable = null,Object? notes = freezed,Object? weekNum = null,}) {
  return _then(_IncomeExpense(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,typeFixedOrVariable: null == typeFixedOrVariable ? _self.typeFixedOrVariable : typeFixedOrVariable // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,weekNum: null == weekNum ? _self.weekNum : weekNum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
