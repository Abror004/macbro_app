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
                            if(controller.banners != null && controller.banners!.banners.isNotEmpty)
                            HomePagePageViewWidget(bannerImages: controller.banners!.banners, bannerController: controller.bannerController, banners: controller.list),
                            // # first featured-list
                            if(controller.featuredList != null && controller.featuredList!.featured_lists.isNotEmpty)
                              HorizontalListWidget(postsTypeName: controller.featuredList!.featured_lists[0].title, products: controller.featuredList!.featured_lists[0].products),
                            const SizedBox(height: 9),

                            // # categories
                            if(controller.categories != null && controller.categories!.categories.isNotEmpty)
                            CategoriesWidget(categories: controller.categories!.categories),

                            // # other featured-list
                            if(controller.featuredList != null && controller.featuredList!.featured_lists.isNotEmpty)
                              for(int i=1; i<controller.featuredList!.featured_lists.length; i++)
                                HorizontalListWidget(postsTypeName: controller.featuredList!.featured_lists[i].title, products: controller.featuredList!.featured_lists[i].products),
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