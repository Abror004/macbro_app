class DiscountGetResponse {
  late final String id;
  late final String name;
  late final num percent;

  DiscountGetResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    percent = json['percent'];
  }
}