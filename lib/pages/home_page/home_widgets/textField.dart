import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';

class HomeTextFieldWidget extends StatelessWidget {
  final TextEditingController searchController;
  const HomeTextFieldWidget({required this.searchController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
            height: 44,
            child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        controller: searchController,
                        showCursor: false,
                        decoration: InputDecoration(
                          hintText: HomePageCore.textfieldHinttext,
                          hintStyle: HomePageCore.textfieldHinttextStyle,
                          filled: true,
                          fillColor: HomePageCore.textfieldBackgroundColor,
                          prefixIcon: const Icon(CupertinoIcons.search, color: HomePageCore.textfieldChildsColor, size: HomePageCore.searchIconSize),
                          contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(HomePageCore.textfieldBorderRadius),
                              borderSide: BorderSide.none
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Image.asset(HomePageCore.notificationIcon, height: HomePageCore.notificationIconSize, width: HomePageCore.notificationIconSize,)
                  )
                ]
            )
        )
    );
  }
}
