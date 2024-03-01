import 'dart:async';

abstract class HttpAppApi {
  // [ PAYMENTS ]
  FutureOr createOrder(
    double amountValue,
    String amountCurrency,
    String token,
    String description,
  );
  FutureOr checkStatusOrder(String orderId);
}
