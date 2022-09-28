class CheckUserExistsByPhoneModel {
  late final String phone_number;

  CheckUserExistsByPhoneModel.fromJson(Map<String, dynamic> json) {
    phone_number = json['phone_number'];
  }
}