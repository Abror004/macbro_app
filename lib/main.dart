import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:macbro_app/pages/home_page/HomePage.dart';
import 'package:macbro_app/services/di_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) =>
          GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Macbro app",
              initialBinding: DIService(),
              home: const HomePage(),
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0,),
                  child: child!,
                );
              }
          )
    );
  }
}

