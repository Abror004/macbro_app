import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/post_model.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_post_type_page/home_post_type_controller.dart';
import 'package:macbro_app/pages/home_page/home_widgets/post_widget.dart';

class HomePostTypePage extends StatelessWidget {
  final String title;
  final List<Post> posts;
  const HomePostTypePage({Key? key, required this.title, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // GetxController controller = Get.find<HomePostTypeControlller>();
    return GetBuilder<HomePostTypeControlller>(
      init: HomePostTypeControlller(),
      builder: (controller) {
        controller.getPosts(posts);
        return Scaffold(
            backgroundColor: HomePageCore.mainColor,
            body: SafeArea(
                child: Column(
                    children: [
                      // # title
                      Container(
                          height: 48,
                          margin: const EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: Stack(
                              children: [
                                Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Get.back();
                                            Get.find<HomePageController>().update();
                                          },
                                          icon: const Icon(Icons.arrow_back_ios_outlined, size: 18)
                                      )
                                    ]
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
                                ),
                              ]
                          )
                      ),
                      // # products
                      Expanded(
                          child: Container(
                              color: HomePageCore.backgroundColor,
                              child: SingleChildScrollView(
                                  primary: true,
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: MasonryGridView.count(
                                              physics: const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 24,
                                              crossAxisSpacing: 12,
                                              itemCount: controller.postList.length,
                                              itemBuilder: (context, index) {
                                                return PostWidget(post: controller.postList[index], function: () {
                                                  controller.postList[index].follow = !controller.postList[index].follow;
                                                  Get.find<HomePostTypeControlller>().update();
                                                },);
                                              },
                                            )
                                        ),
                                        const SizedBox(height: 8)
                                      ]
                                  )
                              )
                          )
                      )
                    ]
                )
            )
        );
      }
    );
  }
}
