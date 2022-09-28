import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/ChildCategoryModel.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_categories_page/home_categories_controller.dart';
import 'package:shimmer/shimmer.dart';

class HomeCategoriesPage extends StatelessWidget {
  final String title;
  final List<ChildCategoryModel> categories;
  const HomeCategoriesPage({Key? key, required this.title, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageCategoriesController>(
        init: HomePageCategoriesController(),
        builder: (controller) {
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
                                            },
                                            icon: const Icon(Icons.arrow_back_ios_outlined, size: 18)
                                        )
                                      ]
                                  ),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          width: MediaQuery.of(context).size.width*0.70,
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: AutoSizeText(
                                                'Продукты $title',
                                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                                                minFontSize: 0,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              )
                                          )
                                      )
                                  )
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
                                            child: GridView.builder(
                                              physics: const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                mainAxisSpacing: 12,
                                                crossAxisSpacing: 12
                                              ),
                                              itemCount: categories.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                    onTap: () {
                                                      log('order: ${categories[index].children.length}');
                                                      Get.find<HomePageController>().gotoProductsPage(categories[index].slug, categories[index].products);
                                                    },
                                                    child: Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(8)
                                                        ),
                                                        padding: const EdgeInsets.only(bottom: 16),
                                                        child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Padding(
                                                                  padding: const EdgeInsets.only(bottom: 16),
                                                                  child: Image.network(
                                                                      categories[index].image,
                                                                      height: 96,
                                                                      loadingBuilder: (context, child, loadingProgress) {
                                                                        if (loadingProgress == null) return child;
                                                                        return Shimmer.fromColors(
                                                                          baseColor: Colors.grey.shade50,
                                                                          highlightColor: Colors.grey.shade200,
                                                                          child: Container(height: 0.25.sw, width: 0.25.sw, color: Colors.white),
                                                                        );
                                                                      }
                                                                  )
                                                              ),
                                                              AutoSizeText(
                                                                categories[index].slug,
                                                                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                                                                minFontSize: 0,
                                                                maxLines: 1,
                                                                overflow: TextOverflow.ellipsis,
                                                              )
                                                            ]
                                                        )
                                                    )
                                                );
                                              }
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
