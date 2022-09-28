import 'package:flutter/material.dart';
import 'package:macbro_app/models/post_model.dart';

class HomePageCore {
  /// main
  static const Color mainColor = Colors.white;
  static const Color backgroundColor = Color(0xFFF9F9FD);

  /// textsField
  static const Color textfieldChildsColor = Colors.grey;
  static const Color textfieldBackgroundColor = Color(0xFFF9F9FD);
  static const String textfieldHinttext = 'Поиск';
  static const String notificationIcon = 'assets/notification_icon.png';
  static const double notificationIconSize = 20;
  static const double textfieldBorderRadius = 5;
  static const double searchIconSize = 24;
  static const TextStyle textfieldHinttextStyle = TextStyle(color: HomePageCore.textfieldChildsColor, fontSize: 15);

  /// page view
  static const double bannerImageHeight = 180;
  static const double bannerImageMargin = 16;
  static const double bannerImageRadius = 10;
  static const double bannerDotsPaddingOfBottom = 10;
  static const double bannerDotsSize = 6;
  static const double bannerDotsSpace = 4;
  static const Color bannerActiveDotColor = Colors.black;
  static const Color bannerDotColor = Color(0xFFDCDCDC);

  /// list posts - news / discounts / recommends
  static const TextStyle postTypeTextStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const double postWidth = 152;
  // image
  static const double postImageHeight = 160;
  static const Color postBackgroundColor = Colors.white;
  static const double postBorderRadius = 8;
  static const double postImagePadding = 16;
  // follow button
  static const Color postFavouriteIconBackgroundColor = Color(0xFFF5F5F5);
  static const Color postFavouriteIconONColor = Colors.blue;
  static const Color postFavouriteIconOFFColor = Color(0xFFABABAB);
  // discount widget
  static const double postDiscountWidgetHeight = 21;
  static const double postDiscountWidgetWidth = 42;
  static const double postDiscountWidgetBorderRadius = 4;
  static const TextStyle postDiscountWidgetTextStyle = TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600);
  static const TextStyle postNameStyle = TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis);
  static const TextStyle postCostTextStyle = TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis);
  static const Gradient postDiscountWidgetGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF007AFF),
      Color(0xFF5BA9FF)
    ],
  );

  /// example data
  // post type
  static List<Post> newPosts = [
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/macbook-air-space-gray-select-201810 1.png', name: 'MacBook Air', cost: '105 999 999', category: Categories.fresh),
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/iphone-12-pro-family-hero 2.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.fresh),
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/image 154.png', name: 'MacBook', cost: '105 999 999', category: Categories.fresh),
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/MXQT2_FV531 1.png', name: 'AirPods', cost: '105 999 999', category: Categories.fresh),
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/ipad-air-select-cell-spacegray-202009 1.png', name: 'MacBook', cost: '105 999 999', category: Categories.fresh),
    Post(follow: false, discount: false, discountCost: 0, image: 'assets/image 155.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.fresh),
  ];
  static List<Post> discountPosts = [
    Post(follow: false, discount: true, discountCost: 15, image: 'assets/macbook-air-space-gray-select-201810 1.png', name: 'MacBook Air', cost: '105 999 999', category: Categories.discounts),
    Post(follow: false, discount: true, discountCost: 25, image: 'assets/iphone-12-pro-family-hero 2.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.discounts),
    Post(follow: false, discount: true, discountCost: 15, image: 'assets/image 154.png', name: 'MacBook', cost: '105 999 999', category: Categories.discounts),
    Post(follow: false, discount: true, discountCost: 5, image: 'assets/MXQT2_FV531 1.png', name: 'AirPods', cost: '105 999 999', category: Categories.discounts),
    Post(follow: false, discount: true, discountCost: 7.5, image: 'assets/ipad-air-select-cell-spacegray-202009 1.png', name: 'MacBook', cost: '105 999 999', category: Categories.discounts),
    Post(follow: false, discount: true, discountCost: 5, image: 'assets/image 155.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.discounts),
  ];
  static List<Post> recommendPosts = [
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/macbook-air-space-gray-select-201810 1.png', name: 'MacBook Air', cost: '105 999 999', category: Categories.fresh),
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/iphone-12-pro-family-hero 2.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.fresh),
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/image 154.png', name: 'MacBook', cost: '105 999 999', category: Categories.fresh),
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/MXQT2_FV531 1.png', name: 'AirPods', cost: '105 999 999', category: Categories.fresh),
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/ipad-air-select-cell-spacegray-202009 1.png', name: 'MacBook', cost: '105 999 999', category: Categories.fresh),
    Post(follow: true, discount: false, discountCost: 0, image: 'assets/image 155.png', name: 'iPhone 12 Pro', cost: '105 999 999', category: Categories.fresh),
  ];
}