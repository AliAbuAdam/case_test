import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yookassa_payments_flutter/yookassa_payments_flutter.dart';

import '../../utils/exchange_utils.dart';
import '../repositories/exchange_repository.dart';

part 'exchange_event.dart';
part 'exchange_state.dart';
part 'exchange_bloc.freezed.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  final ExchangeRepository exchangeRepository;

  ExchangeBloc(this.exchangeRepository)
      : super(const ExchangeState.isWaiting()) {
    on<ExchangeEvent>(
      (event, emit) => event.map(
        createOrder: (event) => _onCreateOrder(event, emit),
      ),
    );
  }

  Future<void> _onCreateOrder(
    _ExchangeEventCreateOrder event,
    Emitter<ExchangeState> emit,
  ) async {
    ExchangeOrderStatuses orderStatus = ExchangeOrderStatuses.canceled;
    try {
      emit(const ExchangeState.isWaiting());
      // tokenization
      final tokenizationResult = await exchangeRepository.tokenization(
        event.title,
        event.subTitle,
        event.amountValue,
        event.currency,
        event.userId,
      ) as (TokenizationResult, TokenizationModuleInputData);
      if (tokenizationResult.$1 is SuccessTokenizationResult) {
        final successTokenizationResult =
            tokenizationResult.$1 as SuccessTokenizationResult;
        // crerate order
        final orderId = await exchangeRepository.createOrder(
          event.subTitle,
          double.parse(tokenizationResult.$2.amount.value),
          tokenizationResult.$2.amount.currency.value,
          successTokenizationResult.token,
          successTokenizationResult.paymentMethodType,
        );
        // checkStatusOrder
        orderStatus = await exchangeRepository.checkStatusOrder(orderId);
      }
      emit(
        ExchangeState.success(
          status: orderStatus,
          ruporCount: event.ruporCount,
        ),
      );
    } on ErrorTokenizationResult {
      emit(const ExchangeState.error(message: 'Ошибка выполнения платежа'));
    } catch (e) {
      emit(ExchangeState.error(message: e.toString()));
    }
  }
}
