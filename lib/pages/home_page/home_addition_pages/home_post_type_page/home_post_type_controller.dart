import 'package:get/get.dart';
import 'package:macbro_app/models/post_model.dart';

class HomePostTypeControlller extends GetxController {
  List<Post> postList = [];

  void getPosts(List<Post> posts) {
    postList = posts;
    update();
  }
}