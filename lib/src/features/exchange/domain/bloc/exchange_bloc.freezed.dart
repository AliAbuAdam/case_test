// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExchangeEvent {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  double get amountValue => throw _privateConstructorUsedError;
  dynamic get currency => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get ruporCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)?
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)?
        createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeEventCreateOrder value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeEventCreateOrder value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeEventCreateOrder value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeEventCopyWith<ExchangeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeEventCopyWith<$Res> {
  factory $ExchangeEventCopyWith(
          ExchangeEvent value, $Res Function(ExchangeEvent) then) =
      _$ExchangeEventCopyWithImpl<$Res, ExchangeEvent>;
  @useResult
  $Res call(
      {String title,
      String subTitle,
      double amountValue,
      dynamic currency,
      String userId,
      int ruporCount});
}

/// @nodoc
class _$ExchangeEventCopyWithImpl<$Res, $Val extends ExchangeEvent>
    implements $ExchangeEventCopyWith<$Res> {
  _$ExchangeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? amountValue = null,
    Object? currency = freezed,
    Object? userId = null,
    Object? ruporCount = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      amountValue: null == amountValue
          ? _value.amountValue
          : amountValue // ignore: cast_nullable_to_non_nullable
              as double,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ruporCount: null == ruporCount
          ? _value.ruporCount
          : ruporCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExchangeEventCreateOrderCopyWith<$Res>
    implements $ExchangeEventCopyWith<$Res> {
  factory _$$_ExchangeEventCreateOrderCopyWith(
          _$_ExchangeEventCreateOrder value,
          $Res Function(_$_ExchangeEventCreateOrder) then) =
      __$$_ExchangeEventCreateOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subTitle,
      double amountValue,
      dynamic currency,
      String userId,
      int ruporCount});
}

/// @nodoc
class __$$_ExchangeEventCreateOrderCopyWithImpl<$Res>
    extends _$ExchangeEventCopyWithImpl<$Res, _$_ExchangeEventCreateOrder>
    implements _$$_ExchangeEventCreateOrderCopyWith<$Res> {
  __$$_ExchangeEventCreateOrderCopyWithImpl(_$_ExchangeEventCreateOrder _value,
      $Res Function(_$_ExchangeEventCreateOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? amountValue = null,
    Object? currency = freezed,
    Object? userId = null,
    Object? ruporCount = null,
  }) {
    return _then(_$_ExchangeEventCreateOrder(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      amountValue: null == amountValue
          ? _value.amountValue
          : amountValue // ignore: cast_nullable_to_non_nullable
              as double,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      ruporCount: null == ruporCount
          ? _value.ruporCount
          : ruporCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExchangeEventCreateOrder implements _ExchangeEventCreateOrder {
  const _$_ExchangeEventCreateOrder(
      {required this.title,
      required this.subTitle,
      required this.amountValue,
      required this.currency,
      required this.userId,
      required this.ruporCount});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final double amountValue;
  @override
  final dynamic currency;
  @override
  final String userId;
  @override
  final int ruporCount;

  @override
  String toString() {
    return 'ExchangeEvent.createOrder(title: $title, subTitle: $subTitle, amountValue: $amountValue, currency: $currency, userId: $userId, ruporCount: $ruporCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeEventCreateOrder &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.amountValue, amountValue) ||
                other.amountValue == amountValue) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ruporCount, ruporCount) ||
                other.ruporCount == ruporCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, amountValue,
      const DeepCollectionEquality().hash(currency), userId, ruporCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeEventCreateOrderCopyWith<_$_ExchangeEventCreateOrder>
      get copyWith => __$$_ExchangeEventCreateOrderCopyWithImpl<
          _$_ExchangeEventCreateOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)
        createOrder,
  }) {
    return createOrder(
        title, subTitle, amountValue, currency, userId, ruporCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)?
        createOrder,
  }) {
    return createOrder?.call(
        title, subTitle, amountValue, currency, userId, ruporCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subTitle, double amountValue,
            dynamic currency, String userId, int ruporCount)?
        createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(
          title, subTitle, amountValue, currency, userId, ruporCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeEventCreateOrder value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeEventCreateOrder value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeEventCreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _ExchangeEventCreateOrder implements ExchangeEvent {
  const factory _ExchangeEventCreateOrder(
      {required final String title,
      required final String subTitle,
      required final double amountValue,
      required final dynamic currency,
      required final String userId,
      required final int ruporCount}) = _$_ExchangeEventCreateOrder;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  double get amountValue;
  @override
  dynamic get currency;
  @override
  String get userId;
  @override
  int get ruporCount;
  @override
  @JsonKey(ignore: true)
  _$$_ExchangeEventCreateOrderCopyWith<_$_ExchangeEventCreateOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExchangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isWaiting,
    required TResult Function(String? message) error,
    required TResult Function(ExchangeOrderStatuses status, int ruporCount)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isWaiting,
    TResult? Function(String? message)? error,
    TResult? Function(ExchangeOrderStatuses status, int ruporCount)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isWaiting,
    TResult Function(String? message)? error,
    TResult Function(ExchangeOrderStatuses status, int ruporCount)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeStateIsWaiting value) isWaiting,
    required TResult Function(_ExchangeStateError value) error,
    required TResult Function(_ExchangeStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult? Function(_ExchangeStateError value)? error,
    TResult? Function(_ExchangeStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult Function(_ExchangeStateError value)? error,
    TResult Function(_ExchangeStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeStateCopyWith<$Res> {
  factory $ExchangeStateCopyWith(
          ExchangeState value, $Res Function(ExchangeState) then) =
      _$ExchangeStateCopyWithImpl<$Res, ExchangeState>;
}

/// @nodoc
class _$ExchangeStateCopyWithImpl<$Res, $Val extends ExchangeState>
    implements $ExchangeStateCopyWith<$Res> {
  _$ExchangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ExchangeStateIsWaitingCopyWith<$Res> {
  factory _$$_ExchangeStateIsWaitingCopyWith(_$_ExchangeStateIsWaiting value,
          $Res Function(_$_ExchangeStateIsWaiting) then) =
      __$$_ExchangeStateIsWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExchangeStateIsWaitingCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$_ExchangeStateIsWaiting>
    implements _$$_ExchangeStateIsWaitingCopyWith<$Res> {
  __$$_ExchangeStateIsWaitingCopyWithImpl(_$_ExchangeStateIsWaiting _value,
      $Res Function(_$_ExchangeStateIsWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExchangeStateIsWaiting implements _ExchangeStateIsWaiting {
  const _$_ExchangeStateIsWaiting();

  @override
  String toString() {
    return 'ExchangeState.isWaiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeStateIsWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isWaiting,
    required TResult Function(String? message) error,
    required TResult Function(ExchangeOrderStatuses status, int ruporCount)
        success,
  }) {
    return isWaiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isWaiting,
    TResult? Function(String? message)? error,
    TResult? Function(ExchangeOrderStatuses status, int ruporCount)? success,
  }) {
    return isWaiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isWaiting,
    TResult Function(String? message)? error,
    TResult Function(ExchangeOrderStatuses status, int ruporCount)? success,
    required TResult orElse(),
  }) {
    if (isWaiting != null) {
      return isWaiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeStateIsWaiting value) isWaiting,
    required TResult Function(_ExchangeStateError value) error,
    required TResult Function(_ExchangeStateSuccess value) success,
  }) {
    return isWaiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult? Function(_ExchangeStateError value)? error,
    TResult? Function(_ExchangeStateSuccess value)? success,
  }) {
    return isWaiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult Function(_ExchangeStateError value)? error,
    TResult Function(_ExchangeStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (isWaiting != null) {
      return isWaiting(this);
    }
    return orElse();
  }
}

abstract class _ExchangeStateIsWaiting implements ExchangeState {
  const factory _ExchangeStateIsWaiting() = _$_ExchangeStateIsWaiting;
}

/// @nodoc
abstract class _$$_ExchangeStateErrorCopyWith<$Res> {
  factory _$$_ExchangeStateErrorCopyWith(_$_ExchangeStateError value,
          $Res Function(_$_ExchangeStateError) then) =
      __$$_ExchangeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ExchangeStateErrorCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$_ExchangeStateError>
    implements _$$_ExchangeStateErrorCopyWith<$Res> {
  __$$_ExchangeStateErrorCopyWithImpl(
      _$_ExchangeStateError _value, $Res Function(_$_ExchangeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ExchangeStateError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ExchangeStateError implements _ExchangeStateError {
  const _$_ExchangeStateError({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ExchangeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeStateErrorCopyWith<_$_ExchangeStateError> get copyWith =>
      __$$_ExchangeStateErrorCopyWithImpl<_$_ExchangeStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isWaiting,
    required TResult Function(String? message) error,
    required TResult Function(ExchangeOrderStatuses status, int ruporCount)
        success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isWaiting,
    TResult? Function(String? message)? error,
    TResult? Function(ExchangeOrderStatuses status, int ruporCount)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isWaiting,
    TResult Function(String? message)? error,
    TResult Function(ExchangeOrderStatuses status, int ruporCount)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeStateIsWaiting value) isWaiting,
    required TResult Function(_ExchangeStateError value) error,
    required TResult Function(_ExchangeStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult? Function(_ExchangeStateError value)? error,
    TResult? Function(_ExchangeStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult Function(_ExchangeStateError value)? error,
    TResult Function(_ExchangeStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ExchangeStateError implements ExchangeState {
  const factory _ExchangeStateError({final String? message}) =
      _$_ExchangeStateError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_ExchangeStateErrorCopyWith<_$_ExchangeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExchangeStateSuccessCopyWith<$Res> {
  factory _$$_ExchangeStateSuccessCopyWith(_$_ExchangeStateSuccess value,
          $Res Function(_$_ExchangeStateSuccess) then) =
      __$$_ExchangeStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ExchangeOrderStatuses status, int ruporCount});
}

/// @nodoc
class __$$_ExchangeStateSuccessCopyWithImpl<$Res>
    extends _$ExchangeStateCopyWithImpl<$Res, _$_ExchangeStateSuccess>
    implements _$$_ExchangeStateSuccessCopyWith<$Res> {
  __$$_ExchangeStateSuccessCopyWithImpl(_$_ExchangeStateSuccess _value,
      $Res Function(_$_ExchangeStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ruporCount = null,
  }) {
    return _then(_$_ExchangeStateSuccess(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExchangeOrderStatuses,
      ruporCount: null == ruporCount
          ? _value.ruporCount
          : ruporCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExchangeStateSuccess implements _ExchangeStateSuccess {
  const _$_ExchangeStateSuccess(
      {required this.status, required this.ruporCount});

  @override
  final ExchangeOrderStatuses status;
  @override
  final int ruporCount;

  @override
  String toString() {
    return 'ExchangeState.success(status: $status, ruporCount: $ruporCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExchangeStateSuccess &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ruporCount, ruporCount) ||
                other.ruporCount == ruporCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, ruporCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExchangeStateSuccessCopyWith<_$_ExchangeStateSuccess> get copyWith =>
      __$$_ExchangeStateSuccessCopyWithImpl<_$_ExchangeStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isWaiting,
    required TResult Function(String? message) error,
    required TResult Function(ExchangeOrderStatuses status, int ruporCount)
        success,
  }) {
    return success(status, ruporCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isWaiting,
    TResult? Function(String? message)? error,
    TResult? Function(ExchangeOrderStatuses status, int ruporCount)? success,
  }) {
    return success?.call(status, ruporCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isWaiting,
    TResult Function(String? message)? error,
    TResult Function(ExchangeOrderStatuses status, int ruporCount)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status, ruporCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExchangeStateIsWaiting value) isWaiting,
    required TResult Function(_ExchangeStateError value) error,
    required TResult Function(_ExchangeStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult? Function(_ExchangeStateError value)? error,
    TResult? Function(_ExchangeStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExchangeStateIsWaiting value)? isWaiting,
    TResult Function(_ExchangeStateError value)? error,
    TResult Function(_ExchangeStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ExchangeStateSuccess implements ExchangeState {
  const factory _ExchangeStateSuccess(
      {required final ExchangeOrderStatuses status,
      required final int ruporCount}) = _$_ExchangeStateSuccess;

  ExchangeOrderStatuses get status;
  int get ruporCount;
  @JsonKey(ignore: true)
  _$$_ExchangeStateSuccessCopyWith<_$_ExchangeStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
