class CheckUserExistsByPhoneResponse {
  late final bool exists;

  CheckUserExistsByPhoneResponse.fromJson(Map<String, dynamic> json) {
    exists = json['exists'];
  }
}