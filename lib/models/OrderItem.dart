class OrderItem {
  late final String image;
  late final num price;
  late final String product_id;
  late final String product_name;
  late final String product_slug;
  late final int quantity;
  late final int warranty_period;

  OrderItem.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    price = json['price'];
    product_id = json['product_id'];
    product_name = json['product_name'];
    product_slug = json['product_slug'];
    quantity = json['quantity'];
    warranty_period = json['warranty_period'];
  }
}