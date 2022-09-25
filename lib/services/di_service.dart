import 'package:get/get.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_categories_page/home_categories_controller.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_post_type_page/home_post_type_controller.dart';


class DIService implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);
    Get.lazyPut<HomePostTypeControlller>(() => HomePostTypeControlller(), fenix: true);
    Get.lazyPut<HomePageCategoriesController>(() => HomePageCategoriesController(), fenix: true);
  }
}
