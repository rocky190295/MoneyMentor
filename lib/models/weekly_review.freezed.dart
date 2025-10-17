// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklyReview {

 int get id; DateTime get weekStart; Map<String, double> get metrics; String? get wins; String? get slipUps; String? get lessons;
/// Create a copy of WeeklyReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyReviewCopyWith<WeeklyReview> get copyWith => _$WeeklyReviewCopyWithImpl<WeeklyReview>(this as WeeklyReview, _$identity);

  /// Serializes this WeeklyReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyReview&&(identical(other.id, id) || other.id == id)&&(identical(other.weekStart, weekStart) || other.weekStart == weekStart)&&const DeepCollectionEquality().equals(other.metrics, metrics)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.slipUps, slipUps) || other.slipUps == slipUps)&&(identical(other.lessons, lessons) || other.lessons == lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weekStart,const DeepCollectionEquality().hash(metrics),wins,slipUps,lessons);

@override
String toString() {
  return 'WeeklyReview(id: $id, weekStart: $weekStart, metrics: $metrics, wins: $wins, slipUps: $slipUps, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $WeeklyReviewCopyWith<$Res>  {
  factory $WeeklyReviewCopyWith(WeeklyReview value, $Res Function(WeeklyReview) _then) = _$WeeklyReviewCopyWithImpl;
@useResult
$Res call({
 int id, DateTime weekStart, Map<String, double> metrics, String? wins, String? slipUps, String? lessons
});




}
/// @nodoc
class _$WeeklyReviewCopyWithImpl<$Res>
    implements $WeeklyReviewCopyWith<$Res> {
  _$WeeklyReviewCopyWithImpl(this._self, this._then);

  final WeeklyReview _self;
  final $Res Function(WeeklyReview) _then;

/// Create a copy of WeeklyReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? weekStart = null,Object? metrics = null,Object? wins = freezed,Object? slipUps = freezed,Object? lessons = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,weekStart: null == weekStart ? _self.weekStart : weekStart // ignore: cast_nullable_to_non_nullable
as DateTime,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as Map<String, double>,wins: freezed == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as String?,slipUps: freezed == slipUps ? _self.slipUps : slipUps // ignore: cast_nullable_to_non_nullable
as String?,lessons: freezed == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyReview].
extension WeeklyReviewPatterns on WeeklyReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyReview value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyReview value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime weekStart,  Map<String, double> metrics,  String? wins,  String? slipUps,  String? lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyReview() when $default != null:
return $default(_that.id,_that.weekStart,_that.metrics,_that.wins,_that.slipUps,_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime weekStart,  Map<String, double> metrics,  String? wins,  String? slipUps,  String? lessons)  $default,) {final _that = this;
switch (_that) {
case _WeeklyReview():
return $default(_that.id,_that.weekStart,_that.metrics,_that.wins,_that.slipUps,_that.lessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime weekStart,  Map<String, double> metrics,  String? wins,  String? slipUps,  String? lessons)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyReview() when $default != null:
return $default(_that.id,_that.weekStart,_that.metrics,_that.wins,_that.slipUps,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyReview implements WeeklyReview {
  const _WeeklyReview({required this.id, required this.weekStart, required final  Map<String, double> metrics, this.wins, this.slipUps, this.lessons}): _metrics = metrics;
  factory _WeeklyReview.fromJson(Map<String, dynamic> json) => _$WeeklyReviewFromJson(json);

@override final  int id;
@override final  DateTime weekStart;
 final  Map<String, double> _metrics;
@override Map<String, double> get metrics {
  if (_metrics is EqualUnmodifiableMapView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metrics);
}

@override final  String? wins;
@override final  String? slipUps;
@override final  String? lessons;

/// Create a copy of WeeklyReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyReviewCopyWith<_WeeklyReview> get copyWith => __$WeeklyReviewCopyWithImpl<_WeeklyReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyReview&&(identical(other.id, id) || other.id == id)&&(identical(other.weekStart, weekStart) || other.weekStart == weekStart)&&const DeepCollectionEquality().equals(other._metrics, _metrics)&&(identical(other.wins, wins) || other.wins == wins)&&(identical(other.slipUps, slipUps) || other.slipUps == slipUps)&&(identical(other.lessons, lessons) || other.lessons == lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,weekStart,const DeepCollectionEquality().hash(_metrics),wins,slipUps,lessons);

@override
String toString() {
  return 'WeeklyReview(id: $id, weekStart: $weekStart, metrics: $metrics, wins: $wins, slipUps: $slipUps, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$WeeklyReviewCopyWith<$Res> implements $WeeklyReviewCopyWith<$Res> {
  factory _$WeeklyReviewCopyWith(_WeeklyReview value, $Res Function(_WeeklyReview) _then) = __$WeeklyReviewCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime weekStart, Map<String, double> metrics, String? wins, String? slipUps, String? lessons
});




}
/// @nodoc
class __$WeeklyReviewCopyWithImpl<$Res>
    implements _$WeeklyReviewCopyWith<$Res> {
  __$WeeklyReviewCopyWithImpl(this._self, this._then);

  final _WeeklyReview _self;
  final $Res Function(_WeeklyReview) _then;

/// Create a copy of WeeklyReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? weekStart = null,Object? metrics = null,Object? wins = freezed,Object? slipUps = freezed,Object? lessons = freezed,}) {
  return _then(_WeeklyReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,weekStart: null == weekStart ? _self.weekStart : weekStart // ignore: cast_nullable_to_non_nullable
as DateTime,metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as Map<String, double>,wins: freezed == wins ? _self.wins : wins // ignore: cast_nullable_to_non_nullable
as String?,slipUps: freezed == slipUps ? _self.slipUps : slipUps // ignore: cast_nullable_to_non_nullable
as String?,lessons: freezed == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
