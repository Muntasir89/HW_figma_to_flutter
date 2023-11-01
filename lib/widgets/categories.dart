import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class categories extends StatelessWidget {
  categories({super.key});
  List<List<String>> categoriesList = [
    ["assets/apple.svg", "Fruits"],
    ["assets/broccoli.svg", "vegetables"],
    ["assets/cheese.svg", "Diary"],
    ["assets/meat.svg", "Meat"]
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                children: [
                  Container(
                    height: 73.h,
                    width: 73.w,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F5F7),
                      borderRadius: BorderRadius.circular(36),
                    ),
                    child: SvgPicture.asset(
                      categoriesList[index][0],
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    categoriesList[index][1],
                    style: GoogleFonts.dmSans(
                      fontSize: 14.sp,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff06161C),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
