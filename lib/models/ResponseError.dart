class ResponseError {
  late final int code;
  late final Map error;
  late final String message;

  ResponseError.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    error = json['error'];
    message = json['message'];
  }
}