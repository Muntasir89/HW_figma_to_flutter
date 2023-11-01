import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/widgets/appBar.dart';
import 'package:shop_app/widgets/background.dart';
import 'package:shop_app/widgets/bestSelling.dart';
import 'package:shop_app/widgets/bestSellings.dart';
import 'package:shop_app/widgets/bottomAppBar.dart';
import 'package:shop_app/widgets/categories.dart';
import 'package:shop_app/widgets/categoriesHeader.dart';
import 'package:shop_app/widgets/offerCard.dart';
import 'package:shop_app/widgets/searchBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffffffff),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              backgournd(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 12.h),
                child: Column(
                  children: [
                    appBar(),
                    SizedBox(height: 20.h),
                    searchBar(),
                    SizedBox(height: 20.h),
                    offerCard(),
                    SizedBox(height: 20.h),
                    categoriesHeader(),
                    SizedBox(height: 10.h),
                    categories(),
                    SizedBox(height: 10.h),
                    bestSellingHeader(),
                    SizedBox(height: 10.h),
                    bestSellings()
                  ],
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SvgPicture.asset(
              "assets/floating_btn_icon.svg",
              height: 65,
              width: 65,
            ),
          ),
          bottomNavigationBar: bottomAppBar()),
    );
  }
}
