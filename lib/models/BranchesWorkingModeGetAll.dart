import 'package:macbro_app/models/BranchWorkingMode.dart';

class BranchesWorkingModeGetAll {
  late final BranchWorkingMode branches;
  late final int count;

  BranchesWorkingModeGetAll.fromJson(Map<String, dynamic> json) {
    branches = BranchWorkingMode.fromJson(json['branches']);
    count = json['count'];
  }
}