import 'package:get/get.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/models/post_model.dart';

class HomePostTypeControlller extends GetxController {
  List<ProductSlimModel> products = [];

  void getPosts(List<ProductSlimModel> posts) {
    products = posts;
    update();
  }
}