// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_instrument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DebtInstrument {

 int get id; String get name; double get balance; double get emi; double get minDue; int get priority;// lower number = higher priority
 int get pendingInstallments; String? get notes;
/// Create a copy of DebtInstrument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtInstrumentCopyWith<DebtInstrument> get copyWith => _$DebtInstrumentCopyWithImpl<DebtInstrument>(this as DebtInstrument, _$identity);

  /// Serializes this DebtInstrument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtInstrument&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.emi, emi) || other.emi == emi)&&(identical(other.minDue, minDue) || other.minDue == minDue)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.pendingInstallments, pendingInstallments) || other.pendingInstallments == pendingInstallments)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,emi,minDue,priority,pendingInstallments,notes);

@override
String toString() {
  return 'DebtInstrument(id: $id, name: $name, balance: $balance, emi: $emi, minDue: $minDue, priority: $priority, pendingInstallments: $pendingInstallments, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $DebtInstrumentCopyWith<$Res>  {
  factory $DebtInstrumentCopyWith(DebtInstrument value, $Res Function(DebtInstrument) _then) = _$DebtInstrumentCopyWithImpl;
@useResult
$Res call({
 int id, String name, double balance, double emi, double minDue, int priority, int pendingInstallments, String? notes
});




}
/// @nodoc
class _$DebtInstrumentCopyWithImpl<$Res>
    implements $DebtInstrumentCopyWith<$Res> {
  _$DebtInstrumentCopyWithImpl(this._self, this._then);

  final DebtInstrument _self;
  final $Res Function(DebtInstrument) _then;

/// Create a copy of DebtInstrument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? emi = null,Object? minDue = null,Object? priority = null,Object? pendingInstallments = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,emi: null == emi ? _self.emi : emi // ignore: cast_nullable_to_non_nullable
as double,minDue: null == minDue ? _self.minDue : minDue // ignore: cast_nullable_to_non_nullable
as double,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,pendingInstallments: null == pendingInstallments ? _self.pendingInstallments : pendingInstallments // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebtInstrument].
extension DebtInstrumentPatterns on DebtInstrument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtInstrument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtInstrument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtInstrument value)  $default,){
final _that = this;
switch (_that) {
case _DebtInstrument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtInstrument value)?  $default,){
final _that = this;
switch (_that) {
case _DebtInstrument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double balance,  double emi,  double minDue,  int priority,  int pendingInstallments,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtInstrument() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.emi,_that.minDue,_that.priority,_that.pendingInstallments,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double balance,  double emi,  double minDue,  int priority,  int pendingInstallments,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _DebtInstrument():
return $default(_that.id,_that.name,_that.balance,_that.emi,_that.minDue,_that.priority,_that.pendingInstallments,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double balance,  double emi,  double minDue,  int priority,  int pendingInstallments,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _DebtInstrument() when $default != null:
return $default(_that.id,_that.name,_that.balance,_that.emi,_that.minDue,_that.priority,_that.pendingInstallments,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtInstrument implements DebtInstrument {
  const _DebtInstrument({required this.id, required this.name, required this.balance, required this.emi, required this.minDue, required this.priority, required this.pendingInstallments, this.notes});
  factory _DebtInstrument.fromJson(Map<String, dynamic> json) => _$DebtInstrumentFromJson(json);

@override final  int id;
@override final  String name;
@override final  double balance;
@override final  double emi;
@override final  double minDue;
@override final  int priority;
// lower number = higher priority
@override final  int pendingInstallments;
@override final  String? notes;

/// Create a copy of DebtInstrument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtInstrumentCopyWith<_DebtInstrument> get copyWith => __$DebtInstrumentCopyWithImpl<_DebtInstrument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtInstrumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtInstrument&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.emi, emi) || other.emi == emi)&&(identical(other.minDue, minDue) || other.minDue == minDue)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.pendingInstallments, pendingInstallments) || other.pendingInstallments == pendingInstallments)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,balance,emi,minDue,priority,pendingInstallments,notes);

@override
String toString() {
  return 'DebtInstrument(id: $id, name: $name, balance: $balance, emi: $emi, minDue: $minDue, priority: $priority, pendingInstallments: $pendingInstallments, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$DebtInstrumentCopyWith<$Res> implements $DebtInstrumentCopyWith<$Res> {
  factory _$DebtInstrumentCopyWith(_DebtInstrument value, $Res Function(_DebtInstrument) _then) = __$DebtInstrumentCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double balance, double emi, double minDue, int priority, int pendingInstallments, String? notes
});




}
/// @nodoc
class __$DebtInstrumentCopyWithImpl<$Res>
    implements _$DebtInstrumentCopyWith<$Res> {
  __$DebtInstrumentCopyWithImpl(this._self, this._then);

  final _DebtInstrument _self;
  final $Res Function(_DebtInstrument) _then;

/// Create a copy of DebtInstrument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? balance = null,Object? emi = null,Object? minDue = null,Object? priority = null,Object? pendingInstallments = null,Object? notes = freezed,}) {
  return _then(_DebtInstrument(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,emi: null == emi ? _self.emi : emi // ignore: cast_nullable_to_non_nullable
as double,minDue: null == minDue ? _self.minDue : minDue // ignore: cast_nullable_to_non_nullable
as double,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int,pendingInstallments: null == pendingInstallments ? _self.pendingInstallments : pendingInstallments // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
