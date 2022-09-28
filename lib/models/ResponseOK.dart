class ResponseOK {
  late final Map message;

  ResponseOK.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }
}