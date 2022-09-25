import 'package:macbro_app/models/branch_models/BranchGetResponseModel.dart';

class BranchFindResponseModel {
  late final List<BranchGetResponseModel> branches;
  late final int count;

  BranchFindResponseModel.fromJson(Map<String, dynamic> json) {
    branches = json['branches'];
    branches = List.generate((json['branches'] as List).length, (index) => BranchGetResponseModel.fromJson((json["branches"] as List)[index]));
    count = json['count'];
  }

  Map<String, dynamic> toJson() => {
    'branches': branches,
    'count': count,
  };
}