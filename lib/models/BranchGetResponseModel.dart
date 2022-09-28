class BranchGetResponseModel {
  late final String address;
  late final String city_id;
  late final String company_id;
  late final String corporate_id;
  late final String description;
  late final String id;
  late final String name;
  late final String phone_number;
  late final List<String> staff;
  late final String type;
  late final String warehouse_id;

  BranchGetResponseModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city_id = json['city_id'];
    company_id = json['company_id'];
    corporate_id = json['corporate_id'];
    description = json['description'];
    id = json['id'];
    name = json['name'];
    phone_number = json['phone_number'];
    staff = json['staff'] == null ? [] : List.generate((json['staff'] as List).length, (index) => json["staff"][index]);
    type = json['type'];
    warehouse_id = json['warehouse_id'];
  }
}