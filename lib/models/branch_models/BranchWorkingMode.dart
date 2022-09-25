class BranchWorkingMode {
  late final bool active;
  late final String address;
  late final String id;
  late final String title;
  late final String working_mode;

  BranchWorkingMode.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    address = json['address'];
    id = json['id'];
    active = json['active'];
    working_mode = json['working_mode'];
  }
}