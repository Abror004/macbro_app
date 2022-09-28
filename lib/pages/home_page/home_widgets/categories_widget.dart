import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/CategorySlimModel.dart';
import 'package:macbro_app/pages/home_page/HomePageController.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesWidget extends StatelessWidget {
  final List<CategorySlimModel> categories;
  const CategoriesWidget({Key? key, required this.categories}) : super(key: key);

   getText() {

  }

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
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Get.find<HomePageController>().gotoPostCategoriesPage(categories[index].name, categories[index].children);
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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                                // child: Text(categories[index].name!, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17, overflow: TextOverflow.fade), textAlign: TextAlign.center)
                              child: AutoSizeText(
                                categories[index].name,
                                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17, overflow: TextOverflow.fade),
                                minFontSize: 0,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            )
                          ]
                      )
                  )
              );
              }
          )
        ),
        const SizedBox(height: 16)
      ]
    );
  }
}
