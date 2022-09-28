class UserForInstallment {
  late final String address;
  late final String fullname;
  late final num monthly_wage;
  late final String passport_number;
  late final String workplace;

  UserForInstallment.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    fullname = json['fullname'];
    monthly_wage = json['monthly_wage'];
    passport_number = json['passport_number'];
    workplace = json['workplace'];
  }
}