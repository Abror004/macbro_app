class Error {
  late final int code;
  late final String message;
  late final String reason;

  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    reason = json['reason'];
  }
}