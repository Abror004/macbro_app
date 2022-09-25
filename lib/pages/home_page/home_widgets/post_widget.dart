import 'package:flutter/material.dart';
import 'package:macbro_app/models/post_model.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  final function;
  const PostWidget({required this.post, required this.function, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<Home>(
    //     init: HomePostTypeControlller(),
    //     builder: (controller) {
    //
    //     }
    // );
    return SizedBox(
        width: HomePageCore.postWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: HomePageCore.postImageHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: HomePageCore.postBackgroundColor,
                    borderRadius: BorderRadius.circular(HomePageCore.textfieldBorderRadius)
                ),
                child: Stack(
                  children: [
                    // # image
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 23),
                            child: Image.asset(post.image)
                        )
                    ),
                    // # follow
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: InkWell(
                                onTap: function,
                                child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: HomePageCore.postFavouriteIconBackgroundColor,
                                    child: Icon(Icons.favorite, size: 14, color: post.follow ? HomePageCore.postFavouriteIconONColor : HomePageCore.postFavouriteIconOFFColor)
                                )
                            )
                        )
                    ),
                    // # discount
                    if(post.discount)
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: HomePageCore.postDiscountWidgetHeight,
                            width: HomePageCore.postDiscountWidgetWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(HomePageCore.postDiscountWidgetBorderRadius),
                                gradient: HomePageCore.postDiscountWidgetGradient
                            ),
                            alignment: Alignment.center,
                            child: Text('-${post.discountCost}%', style: HomePageCore.postDiscountWidgetTextStyle),
                          ),
                        ),
                      )
                  ],
                )
            ),
            const SizedBox(height: 8),
            // # name text
            Text(post.name, style: HomePageCore.postNameStyle),
            const SizedBox(height: 4),
            // # cost text
            Text('от ${post.cost} сум', style: HomePageCore.postCostTextStyle),
          ],
        )
    );
  }
}
