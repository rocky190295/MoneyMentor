// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentHistory {

 int get id; DateTime get dateOfPayment; String get instrumentName; String get type;// e.g., 'Debt', 'CreditCard', 'Expense'
 double get amountPaid; String? get notes;
/// Create a copy of PaymentHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentHistoryCopyWith<PaymentHistory> get copyWith => _$PaymentHistoryCopyWithImpl<PaymentHistory>(this as PaymentHistory, _$identity);

  /// Serializes this PaymentHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.dateOfPayment, dateOfPayment) || other.dateOfPayment == dateOfPayment)&&(identical(other.instrumentName, instrumentName) || other.instrumentName == instrumentName)&&(identical(other.type, type) || other.type == type)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateOfPayment,instrumentName,type,amountPaid,notes);

@override
String toString() {
  return 'PaymentHistory(id: $id, dateOfPayment: $dateOfPayment, instrumentName: $instrumentName, type: $type, amountPaid: $amountPaid, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $PaymentHistoryCopyWith<$Res>  {
  factory $PaymentHistoryCopyWith(PaymentHistory value, $Res Function(PaymentHistory) _then) = _$PaymentHistoryCopyWithImpl;
@useResult
$Res call({
 int id, DateTime dateOfPayment, String instrumentName, String type, double amountPaid, String? notes
});




}
/// @nodoc
class _$PaymentHistoryCopyWithImpl<$Res>
    implements $PaymentHistoryCopyWith<$Res> {
  _$PaymentHistoryCopyWithImpl(this._self, this._then);

  final PaymentHistory _self;
  final $Res Function(PaymentHistory) _then;

/// Create a copy of PaymentHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dateOfPayment = null,Object? instrumentName = null,Object? type = null,Object? amountPaid = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dateOfPayment: null == dateOfPayment ? _self.dateOfPayment : dateOfPayment // ignore: cast_nullable_to_non_nullable
as DateTime,instrumentName: null == instrumentName ? _self.instrumentName : instrumentName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentHistory].
extension PaymentHistoryPatterns on PaymentHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentHistory value)  $default,){
final _that = this;
switch (_that) {
case _PaymentHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentHistory value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime dateOfPayment,  String instrumentName,  String type,  double amountPaid,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentHistory() when $default != null:
return $default(_that.id,_that.dateOfPayment,_that.instrumentName,_that.type,_that.amountPaid,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime dateOfPayment,  String instrumentName,  String type,  double amountPaid,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _PaymentHistory():
return $default(_that.id,_that.dateOfPayment,_that.instrumentName,_that.type,_that.amountPaid,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime dateOfPayment,  String instrumentName,  String type,  double amountPaid,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _PaymentHistory() when $default != null:
return $default(_that.id,_that.dateOfPayment,_that.instrumentName,_that.type,_that.amountPaid,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentHistory implements PaymentHistory {
  const _PaymentHistory({required this.id, required this.dateOfPayment, required this.instrumentName, required this.type, required this.amountPaid, this.notes});
  factory _PaymentHistory.fromJson(Map<String, dynamic> json) => _$PaymentHistoryFromJson(json);

@override final  int id;
@override final  DateTime dateOfPayment;
@override final  String instrumentName;
@override final  String type;
// e.g., 'Debt', 'CreditCard', 'Expense'
@override final  double amountPaid;
@override final  String? notes;

/// Create a copy of PaymentHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentHistoryCopyWith<_PaymentHistory> get copyWith => __$PaymentHistoryCopyWithImpl<_PaymentHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.dateOfPayment, dateOfPayment) || other.dateOfPayment == dateOfPayment)&&(identical(other.instrumentName, instrumentName) || other.instrumentName == instrumentName)&&(identical(other.type, type) || other.type == type)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateOfPayment,instrumentName,type,amountPaid,notes);

@override
String toString() {
  return 'PaymentHistory(id: $id, dateOfPayment: $dateOfPayment, instrumentName: $instrumentName, type: $type, amountPaid: $amountPaid, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$PaymentHistoryCopyWith<$Res> implements $PaymentHistoryCopyWith<$Res> {
  factory _$PaymentHistoryCopyWith(_PaymentHistory value, $Res Function(_PaymentHistory) _then) = __$PaymentHistoryCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime dateOfPayment, String instrumentName, String type, double amountPaid, String? notes
});




}
/// @nodoc
class __$PaymentHistoryCopyWithImpl<$Res>
    implements _$PaymentHistoryCopyWith<$Res> {
  __$PaymentHistoryCopyWithImpl(this._self, this._then);

  final _PaymentHistory _self;
  final $Res Function(_PaymentHistory) _then;

/// Create a copy of PaymentHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dateOfPayment = null,Object? instrumentName = null,Object? type = null,Object? amountPaid = null,Object? notes = freezed,}) {
  return _then(_PaymentHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dateOfPayment: null == dateOfPayment ? _self.dateOfPayment : dateOfPayment // ignore: cast_nullable_to_non_nullable
as DateTime,instrumentName: null == instrumentName ? _self.instrumentName : instrumentName // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
