class LinkResponse {
  late final String link;

  LinkResponse.fromJson(Map<String, dynamic> json) {
    link = json['link'];
  }
}