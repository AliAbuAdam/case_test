abstract class ExchangeUtils {
  static const clientApplicationKey =
      "live_MjY1NzE1BNQHPBBYdofhHLxUUq4TjrXczWCkB7mC3fw";
  static const shopId = "265715";
  static const secretKey = 'live_7E0mYFVoFN8Avwi779Asb2rU4fZAZIcnmOUrcWjDpK8';

  static ExchangeOrderStatuses convertStringOrderStatus(String status) {
    switch (status) {
      case 'pending':
        return ExchangeOrderStatuses.pending;
      case 'waiting_for_capture':
        return ExchangeOrderStatuses.waitingForCapture;
      case 'canceled':
        return ExchangeOrderStatuses.canceled;
      case 'succeeded':
        return ExchangeOrderStatuses.succeeded;
    }
    return ExchangeOrderStatuses.pending;
  }
}

enum ExchangeOrderStatuses {
  pending,
  waitingForCapture,
  succeeded,
  canceled,
}
