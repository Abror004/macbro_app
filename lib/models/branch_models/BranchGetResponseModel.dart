class BranchGetResponseModel {
  late final String address;
  late final String city_id;
  late final String company_id;
  late final String corporate_id;
  late final String description;
  late final String id;
  late final String name;
  late final String phone_number;
  late final List<BranchGetResponseModel> staff;
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
    staff = List.generate((json['branches'] as List).length, (index) => BranchGetResponseModel.fromJson((json["branches"] as List)[index]));
    type = json['type'];
    warehouse_id = json['warehouse_id'];
  }

  Map<String, dynamic> toJson() => {
    'address': address,
    'city_id': city_id,
    'company_id': company_id,
    'corporate_id': corporate_id,
    'description': description,
    'id': id,
    'name': name,
    'phone_number': phone_number,
    'staff': staff,
    'type': type,
    'warehouse_id': warehouse_id,
  };
}