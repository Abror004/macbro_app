import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/post_model.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_widgets/post_widget.dart';

class HorizontalListWidget extends StatelessWidget {
  final List<Post> posts;
  final String postsTypeName;
  const HorizontalListWidget({required this.postsTypeName, required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // # type / -> button
          // Container(
          //     margin: const EdgeInsets.all(16),
          //     height: 28,
          //     child:
          // ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // # type
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(postsTypeName, style: HomePageCore.postTypeTextStyle)
                ),
                // # -> button
                InkWell(
                    onTap: () {
                      Get.find<HomePageController>().gotoPostTypePage(postsTypeName, posts);
                    },
                    child: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.arrow_forward_outlined)
                    )
                )
              ]
          ),
          // # posts list
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=0; i<posts.length; i++)
                      Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: PostWidget(post: posts[i], function: () {
                            posts[i].follow = !posts[i].follow;
                            Get.find<HomePageController>().update();
                          })
                      )
                  ],
                )
            ),
          )
        ]
    );
  }
}
