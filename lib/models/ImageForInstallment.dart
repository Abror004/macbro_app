class ImageForInstallment {
  late final String passport_image;
  late final String res_image;
  late final String selfie_with_passport;

  ImageForInstallment.fromJson(Map<String, dynamic> json) {
    passport_image = json['passport_image'];
    res_image = json['res_image'];
    selfie_with_passport = json['selfie_with_passport'];
  }
}