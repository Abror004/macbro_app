import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:shimmer/shimmer.dart';

class ProductsPage extends StatelessWidget {
  final String title;
  final List<ProductSlimModel> products;
  const ProductsPage({Key? key, required this.title, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.arrow_back_ios_outlined, size: 18)
                              )
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width*0.70,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: AutoSizeText(
                                          title,
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
                                    // # all products widget
                                    const SizedBox(height: 16),
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 16),
                                      color: Colors.white,
                                      padding: const EdgeInsets.all(16),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(Icons.menu, color: Colors.blue),
                                              SizedBox(width: 16),
                                              Text('Все продукты', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400)),
                                            ],
                                          ),
                                          const Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 20)
                                        ]
                                      )
                                    ),
                                    // # products
                                    const SizedBox(height: 16),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: GridView.builder(
                                            physics: const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                mainAxisSpacing: 12,
                                                crossAxisSpacing: 12
                                            ),
                                            itemCount: products.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                  onTap: () {
                                                    // Get.find<HomePageController>().gotoPostCategoriesPage(categories[index].name!, categories[index].children!);
                                                  },
                                                  child: Container(
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
                                                                child: Container(
                                                                    clipBehavior: Clip.antiAlias,
                                                                    decoration: const BoxDecoration(),
                                                                    child: Image.network(
                                                                        products[index].image,
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
                                                                )
                                                            ),
                                                            AutoSizeText(
                                                              products[index].slug,
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
}
