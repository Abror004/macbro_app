import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_post_type_page/home_post_type_controller.dart';

class HomePostTypePage extends StatelessWidget {
  final String title;
  final List<ProductSlimModel> products;
  const HomePostTypePage({Key? key, required this.title, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePostTypeControlller>(
      init: HomePostTypeControlller(),
      builder: (controller) {
        controller.getPosts(products);
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
                                        const SizedBox(height: 8),
                                        Padding(
                                            padding: const EdgeInsets.all(16),
                                          child: GridView.builder(
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 24,
                                              crossAxisSpacing: 12,
                                              childAspectRatio: 0.83
                                            ),
                                            itemCount: controller.products.length,
                                            itemBuilder: (conttext, index) {
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
                                                                        child: Image.network(products[index].image)
                                                                    )
                                                                ),
                                                                // # follow
                                                                Align(
                                                                    alignment: Alignment.topRight,
                                                                    child: Padding(
                                                                        padding: const EdgeInsets.all(8),
                                                                        child: InkWell(
                                                                            onTap: () {
                                                                              products[index].active = !products[index].active;
                                                                              controller.products[index].active = !controller.products[index].active;
                                                                              Get.find<HomePostTypeControlller>().update();
                                                                            },
                                                                            child: CircleAvatar(
                                                                                radius: 12,
                                                                                backgroundColor: HomePageCore.postFavouriteIconBackgroundColor,
                                                                                child: Icon(Icons.favorite, size: 14, color: products[index].active ? HomePageCore.postFavouriteIconONColor : HomePageCore.postFavouriteIconOFFColor)
                                                                            )
                                                                        )
                                                                    )
                                                                ),
                                                              ],
                                                            )
                                                        ),
                                                        const SizedBox(height: 8),
                                                        // # name text
                                                        Text(products[index].name, style: HomePageCore.postNameStyle),
                                                        const SizedBox(height: 4),
                                                        // # cost text
                                                        AutoSizeText(
                                                          'от ${products[index].cheapest_price} сум',
                                                          style: HomePageCore.postCostTextStyle,
                                                          minFontSize: 0,
                                                          maxLines: 1,
                                                          overflow: TextOverflow.ellipsis,
                                                        )
                                                      ]
                                                  )
                                              );
                                            }
                                          )
                                        )
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
