part of 'exchange_bloc.dart';

@freezed
class ExchangeState with _$ExchangeState {
  const factory ExchangeState.isWaiting() = _ExchangeStateIsWaiting;
  const factory ExchangeState.error({String? message}) = _ExchangeStateError;
  const factory ExchangeState.success({
    required ExchangeOrderStatuses status,
    required int ruporCount,
  }) = _ExchangeStateSuccess;
}
