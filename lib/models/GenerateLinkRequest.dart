class GenerateLinkRequest {
  late final int amount;
  late final String order_number;

  GenerateLinkRequest.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    order_number = json['order_number'];
  }
}