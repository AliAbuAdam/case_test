import 'dart:async';

abstract class ExchangeRepository {
  FutureOr tokenization(
    String title,
    String subTitle,
    double amountValue,
    dynamic currency,
    String userId,
  );
  FutureOr<String> createOrder(
    String description,
    double amountValue,
    String amountCurrency,
    String token,
    dynamic paymentMethod,
  );
  FutureOr checkStatusOrder(String orderId);
}
