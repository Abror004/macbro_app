class CountOfWarehouse {
  late final int count;
  late final String warehouse_id;

  CountOfWarehouse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    warehouse_id = json['warehouse_id'];
  }
}