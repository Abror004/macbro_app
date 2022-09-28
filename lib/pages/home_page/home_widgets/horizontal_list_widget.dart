import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';

class HorizontalListWidget extends StatelessWidget {
  final List<ProductSlimModel> products;
  final String postsTypeName;
  const HorizontalListWidget({required this.postsTypeName, required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // # type / -> button
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
                      Get.find<HomePageController>().gotoPostTypePage(postsTypeName, products);
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
                    for(int i=0; i<products.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
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
                                                child: Image.network(products[i].image)
                                            )
                                        ),
                                        // # follow
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: const EdgeInsets.all(8),
                                                child: InkWell(
                                                    onTap: () {
                                                      products[i].active = !products[i].active;
                                                      Get.find<HomePageController>().update();
                                                    },
                                                    child: CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: HomePageCore.postFavouriteIconBackgroundColor,
                                                        child: Icon(Icons.favorite, size: 14, color: products[i].active ? HomePageCore.postFavouriteIconONColor : HomePageCore.postFavouriteIconOFFColor)
                                                    )
                                                )
                                            )
                                        ),
                                      ],
                                    )
                                ),
                                const SizedBox(height: 8),
                                // # name text
                                Text(products[i].name, style: HomePageCore.postNameStyle),
                                const SizedBox(height: 4),
                                // # cost text
                                AutoSizeText(
                                  'от ${products[i].cheapest_price} сум',
                                  style: HomePageCore.postCostTextStyle,
                                  minFontSize: 0,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                              ]
                            )
                        )
                      )
                  ],
                )
            ),
          ),
        ]
    );
  }
}
