import 'dart:async';
import 'package:case_test/src/app/api/domain/http_app_api.dart';
import 'package:yookassa_payments_flutter/yookassa_payments_flutter.dart';

import '../../domain/repositories/exchange_repository.dart';
import '../../utils/exchange_utils.dart';

class MainExchangeRepository implements ExchangeRepository {
  final HttpAppApi api;

  MainExchangeRepository({required this.api});

  @override
  FutureOr<(TokenizationResult, TokenizationModuleInputData)> tokenization(
    String title,
    String subTitle,
    double amountValue,
    dynamic currency,
    String userId,
  ) async {
    try {
      var amount = Amount(value: amountValue.toString(), currency: currency);
      // create TokenizationModuleInputData
      var tokenizationModuleInputData = TokenizationModuleInputData(
        clientApplicationKey: ExchangeUtils.clientApplicationKey,
        title: title,
        subtitle: subTitle,
        amount: amount,
        savePaymentMethod: SavePaymentMethod.userSelects,
        shopId: ExchangeUtils.shopId,
        customerId: userId,
        tokenizationSettings: const TokenizationSettings(
          PaymentMethodTypes([
            PaymentMethod.bankCard,
            // PaymentMethod.yooMoney,
            // PaymentMethod.sberbank,
            // PaymentMethod.sbp
          ]),
        ),
      );
      // start tokenization
      final tokenizationResult = await YookassaPaymentsFlutter.tokenization(
          tokenizationModuleInputData);

      return (tokenizationResult, tokenizationModuleInputData);
    } catch (_) {
      rethrow;
    }
  }

  @override
  FutureOr<String> createOrder(
    String description,
    double amountValue,
    String amountCurrency,
    String token,
    dynamic paymentMethodType,
  ) async {
    try {
      final response = await api.createOrder(
        amountValue,
        amountCurrency,
        token,
        description,
      );
      await YookassaPaymentsFlutter.confirmation(
        response.data['confirmation']['confirmation_url'],
        paymentMethodType,
        ExchangeUtils.clientApplicationKey,
        ExchangeUtils.shopId,
      );

      return response.data['id'];
    } catch (_) {
      rethrow;
    }
  }

  @override
  FutureOr<ExchangeOrderStatuses> checkStatusOrder(String orderId) async {
    try {
      final response = await api.checkStatusOrder(orderId);
      final statusString = response.data['status'] as String;
      return ExchangeUtils.convertStringOrderStatus(statusString);
    } catch (_) {
      rethrow;
    }
  }
}
