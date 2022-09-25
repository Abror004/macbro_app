import 'package:macbro_app/models/branch_models/BranchWorkingMode.dart';

class BranchesWorkingModeGetAll {
  late final BranchWorkingMode branches;
  late final int count;

  BranchesWorkingModeGetAll.fromJson(Map<String, dynamic> json) {
    branches = json['branches'];
    count = json['count'];
  }
}