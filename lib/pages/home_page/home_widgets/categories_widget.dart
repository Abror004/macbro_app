import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';

class CategoriesWidget extends StatelessWidget {
  final List categories;
  final List categoriesImages;
  const CategoriesWidget({Key? key, required this.categories, required this.categoriesImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('Категории', style: HomePageCore.postTypeTextStyle),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
                height: MediaQuery.of(context).size.width*1.5,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Get.find<HomePageController>().gotoPostCategoriesPage(categories[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Image.asset(
                                        categoriesImages[index],
                                      height: 96,
                                    )
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: Text(categories[index], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17))
                                )
                              ],
                            ),
                          )
                      );
                    }
                )
            )
        )
      ],
    );
  }
}
