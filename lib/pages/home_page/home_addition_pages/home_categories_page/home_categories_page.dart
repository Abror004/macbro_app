import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_categories_page/home_categories_controller.dart';

class HomeCategoriesPage extends StatelessWidget {
  final String title;
  final List<List<String>> categories;
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
                                      child: Text('Продукты $title', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
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
                                              child: GridView.builder(
                                                shrinkWrap: true,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 12,
                                                    mainAxisSpacing: 12
                                                ),
                                                itemCount: categories.length,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(8)
                                                    ),
                                                    padding: const EdgeInsets.all(16),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                            padding: const EdgeInsets.only(bottom: 16),
                                                            child: Image.asset(
                                                              categories[index][1],
                                                              height: 96,
                                                            )
                                                        ),
                                                        Text(categories[index][0], style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17))
                                                      ]
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
