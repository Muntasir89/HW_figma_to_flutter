import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/profile_pic.svg",
          height: 44,
          width: 44,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning",
              style: GoogleFonts.dmSans(
                fontSize: 12.sp,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xff979899),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Amelia Barlow",
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: Color(0xff06161C),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
        Expanded(
          child: SizedBox(
            width: 10.w,
          ),
        ),
        Container(
          height: 44.h,
          width: 130.w,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              67.r,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.location_on_sharp,
                color: Color(0xff23AA49),
                size: 18,
              ),
              Text(
                "My Flat",
                style: GoogleFonts.dmSans(
                  fontSize: 12.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff06161C),
                ),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 19,
              ),
            ],
          ),
        )
      ],
    );
  }
}
