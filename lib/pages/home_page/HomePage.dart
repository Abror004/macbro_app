import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// pages
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_widgets/categories_widget.dart';
import 'package:macbro_app/pages/home_page/home_widgets/horizontal_list_widget.dart';
import 'package:macbro_app/pages/home_page/home_widgets/pageview_widget.dart';
import 'package:macbro_app/pages/home_page/home_widgets/textField.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark, // for Android
          statusBarBrightness: Brightness.dark, // for iOS
        ),
    );
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: HomePageCore.mainColor,
            body: SafeArea(
              child: Column(
                children: [
                  // # seraching textfield
                  HomeTextFieldWidget(searchController: controller.searchController),
                  // # other widget
                  Expanded(
                    child: ColoredBox(
                      color: HomePageCore.backgroundColor,
                      child: SingleChildScrollView(
                        primary: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            // # banners pageview
                            HomePagePageViewWidget(bannerImages: controller.bannerList, bannerController: controller.bannerController, banners: controller.list,),
                            // # new posts
                            HorizontalListWidget(postsTypeName: 'Новые', posts: controller.allData['new']!),
                            const SizedBox(height: 9),

                            // # discount posts
                            HorizontalListWidget(postsTypeName: 'Скидки', posts: controller.allData['discounts']!),
                            const SizedBox(height: 16),

                            // # categories
                            CategoriesWidget(categories: controller.categories, categoriesImages: controller.categoriesImages),
                            const SizedBox(height: 16),

                            // # recommend posts
                            HorizontalListWidget(postsTypeName: 'Рекомендуемые', posts: controller.allData['recommend']!),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    )
                  )
                ],
              ),
            )
        );
      },
    );
  }
}