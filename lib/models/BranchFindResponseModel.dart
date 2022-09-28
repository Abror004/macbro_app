import 'package:macbro_app/models/BranchGetResponseModel.dart';

class BranchFindResponseModel {
  late final List<BranchGetResponseModel> branches;
  late final int count;

  BranchFindResponseModel.fromJson(Map<String, dynamic> json) {
    branches = json['branches'] == null ? [] : List.generate((json['branches'] as List).length, (index) => BranchGetResponseModel.fromJson(json['branches'][index]));
    count = json['count'];
  }
}