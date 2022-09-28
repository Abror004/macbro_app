class GetSeeingNowResponse {
  late final int count;

  GetSeeingNowResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }
}