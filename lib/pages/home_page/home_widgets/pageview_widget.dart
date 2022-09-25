import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:macbro_app/models/banner_models/BannerModel.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:video_player/video_player.dart';

class HomePagePageViewWidget extends StatelessWidget {
  final PageController bannerController;
  final List<BannerModel> bannerImages;
  final List<VideoPlayerController> banners;
  const HomePagePageViewWidget({required this.bannerImages, required this.bannerController, Key? key, required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(HomePageCore.bannerImageMargin),
        height: HomePageCore.bannerImageHeight,
        child: Stack(
            children: [
              PageView.builder(
                controller: bannerController,
                itemCount: bannerImages.length,
                onPageChanged: (index) {
                  banners[index].play();
                  log('i: $index | ${bannerController.page}');
                },
                itemBuilder: (contextm, index) {
                  if(bannerImages[index].type == 'video') {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(HomePageCore.bannerImageRadius),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: VideoPlayer(banners[index])
                    );
                  } else {
                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(HomePageCore.bannerImageRadius),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          bannerImages[index].image,
                          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                            return const SizedBox();
                          },
                          fit: BoxFit.fill,
                          // height: HomePageCore.bannerImageHeight,
                          // width: MediaQuery.of(context).size.width-32,
                        )
                    );
                  }
                }
              ),
              if(bannerImages.length > 3)
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: HomePageCore.bannerDotsPaddingOfBottom),
                      child: SmoothPageIndicator(
                          controller: bannerController,  // PageController
                          count: bannerImages.length,
                          effect: const ScrollingDotsEffect(
                              dotHeight: HomePageCore.bannerDotsSize,
                              dotWidth: HomePageCore.bannerDotsSize,
                              spacing: HomePageCore.bannerDotsSpace,
                              activeDotColor: HomePageCore.bannerActiveDotColor,
                              dotColor: HomePageCore.bannerDotColor,
                              activeDotScale: 1.2
                          )
                      )
                  )
              )
            ]
        )
    );
  }
}
