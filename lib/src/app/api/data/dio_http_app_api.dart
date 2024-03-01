import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import '../../../features/exchange/utils/exchange_utils.dart';
import '../domain/http_app_api.dart';

class DioHttpAppApi implements HttpAppApi {
  late final Dio dio;
  late final Uuid idempotenceKey;

  DioHttpAppApi() {
    // init dio
    dio = Dio();
    // create idempotence key
    idempotenceKey = const Uuid();
  }

  @override
  FutureOr<Response> checkStatusOrder(String orderId) async {
    // config auth data
    final String basicAuth = 'Basic ${base64Encode(
      utf8.encode('${ExchangeUtils.shopId}:${ExchangeUtils.secretKey}'),
    )}';
    try {
      return await dio.get(
        'https://api.yookassa.ru/v3/payments/$orderId',
        options: Options(
          headers: {
            'Authorization': basicAuth,
            'Idempotence-Key': idempotenceKey.v4(),
          },
        ),
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  FutureOr<Response> createOrder(
    double amountValue,
    String amountCurrency,
    String token,
    String description,
  ) async {
    // config auth data
    final String basicAuth = 'Basic ${base64Encode(
      utf8.encode('${ExchangeUtils.shopId}:${ExchangeUtils.secretKey}'),
    )}';
    try {
      return await dio.post(
        'https://api.yookassa.ru/v3/payments',
        data: {
          'amount': {
            "value": amountValue,
            "currency": amountCurrency,
          },
          "capture": true,
          'payment_token': token,
          'description': description,
        },
        options: Options(
          headers: {
            'Authorization': basicAuth,
            'Idempotence-Key': idempotenceKey.v4(),
          },
        ),
      );
    } catch (_) {
      rethrow;
    }
  }
}
