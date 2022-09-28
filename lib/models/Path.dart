class V1Path{
  late final String filename;

  V1Path.fromJson(Map<String, dynamic> json) {
    filename = json['filename'];
  }
}