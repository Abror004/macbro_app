class ClientGetResponse {
  late final int account_number;
  late final String ad_reference;
  late final String button_title;
  late final String city_id;
  late final String date_of_birth;
  late final String email;
  late final String first_name;
  late final String id;
  late final String inn;
  late final String last_name	;
  late final String middle_name;
  late final String passport_number;
  late final String phone_number;
  late final String product_id;
  late final String profile_image;

  ClientGetResponse.fromJson(Map<String, dynamic> json) {
    account_number = json['account_number'];
    ad_reference = json['ad_reference'];
    city_id = json['city_id'];
    date_of_birth = json['date_of_birth'];
    email = json['email'];
    first_name = json['first_name'];
    id = json['id'];
    inn = json['inn'];
    last_name	 = json['last_name	'];
    middle_name = json['middle_name'];
    passport_number = json['passport_number'];
    phone_number = json['phone_number'];
    product_id = json['product_id'];
    profile_image = json['profile_image'];
  }
}