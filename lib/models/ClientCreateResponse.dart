class ClientCreateResponse {
  late final String id;

  ClientCreateResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }
}