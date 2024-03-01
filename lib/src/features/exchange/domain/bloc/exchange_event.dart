part of 'exchange_bloc.dart';

@freezed
class ExchangeEvent with _$ExchangeEvent {
  const factory ExchangeEvent.createOrder({
    required String title,
    required String subTitle,
    required double amountValue,
    required dynamic currency,
    required String userId,
    required int ruporCount,
  }) = _ExchangeEventCreateOrder;
}
